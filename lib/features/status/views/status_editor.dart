import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'package:chat_app/core/all_fonts.dart';
import 'package:chat_app/core/colors.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/status/view_models/bloc/status_bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:native_image_cropper/native_image_cropper.dart';
import 'package:screenshot/screenshot.dart';
import 'package:image_editor/image_editor.dart';

class StatusEditor extends StatefulWidget {
  const StatusEditor({super.key});

  @override
  _StatusEditorState createState() => _StatusEditorState();
}

class _StatusEditorState extends State<StatusEditor> {
  File? _image;
  Uint8List? bytes;
  ScreenshotController screenshotController = ScreenshotController();
  final CropController _controller = CropController();
  TextEditingController captionController = TextEditingController();
  List<Offset?> points = [];
  Color brushColor = Colors.red;
  double brushSize = 5.0;
  List<String> text = [];
  List<Offset> textPosition = [Offset(100, 100)];
  List<Color> textColor = [];
  List<double> fontSize = [];
  bool paintEnabled = false;
  bool textEnabled = false;
  List<TextStyle> selectedStyle = [];
  Color editingTextColor = Colors.white;
  double editingFontSize = 30.0;
  TextStyle editingStyle = TextStyle();

  // Pick an image
  Future<void> pickImage() async {
    final pickedFile =
        await FilePicker.platform.pickFiles(type: FileType.image);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.files.first.path!);
      });
    }
  }

  // Save the final image
  Future<void> saveImage() async {
    try {
      final image = await screenshotController.capture(pixelRatio: 2.0);
      if (image != null) {
        final filePath = '/storage/emulated/0/Download/edited_image.png';
        File(filePath).writeAsBytesSync(image);
        context.read<StatusBloc>().add(StatusEvent.createStatus(
              path: filePath,
              caption: (captionController.text.isNotEmpty)
                  ? captionController.text
                  : null,
            ));
        context.pop();
      } else {
        log("❌ Screenshot failed.");
      }
    } catch (e) {
      log("❌ Error capturing image: $e");
    }
  }

  // Edit Text
  void editText() async {
    textEnabled = !textEnabled;
    setState(() {});
  }

  // Image Manipulation Functions
  void rotateImage() async {
    if (_image == null) return;
    final editorOption = ImageEditorOption()..addOption(RotateOption(90));
    final result = await ImageEditor.editFileImage(
      file: _image!,
      imageEditorOption: editorOption,
    );
    if (result != null) {
      setState(() => _image = File('${_image!.path}_rotated.png')
        ..writeAsBytesSync(result));
    }
  }

  void flipImage() async {
    if (_image == null) return;
    final editorOption = ImageEditorOption()
      ..addOption(FlipOption(horizontal: true));
    final result = await ImageEditor.editFileImage(
      file: _image!,
      imageEditorOption: editorOption,
    );
    if (result != null) {
      setState(() => _image = File('${_image!.path}_flipped.png')
        ..writeAsBytesSync(result));
    }
  }

  void enablePaint() {
    setState(() {
      paintEnabled = !paintEnabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatusBloc, StatusState>(builder: (context, state) {
      if (state.selectedFilePath.isNotEmpty) {
        _image = File(state.selectedFilePath);
      }
      return PopScope(
        canPop: !(paintEnabled || textEnabled),
        onPopInvoked: (didPop) {
          if (didPop) return;
          if (paintEnabled || textEnabled) {
            setState(() {
              paintEnabled = false;
              textEnabled = false;
            });
          }
        },
        child: Scaffold(
          appBar: textEnabled || paintEnabled
              ? AppBar()
              : AppBar(actions: [
                  IconButton(
                      icon: Icon(Icons.flip), onPressed: () => flipImage()),
                  IconButton(
                      icon: Icon(Icons.rotate_left_sharp),
                      onPressed: () => rotateImage()),
                  IconButton(
                      icon: Icon(Icons.text_fields_rounded),
                      onPressed: () => editText()),
                  IconButton(
                      icon: Icon(Icons.edit), onPressed: () => enablePaint()),
                ]),
          body: Stack(
            children: [
              Screenshot(
                controller: screenshotController,
                child: Stack(
                  children: [
                    if (_image != null)
                      Positioned(
                        bottom: 0,
                        top: 0,
                        child: Image.file(_image!,
                            fit: BoxFit.fitWidth,
                            width: MediaQuery.sizeOf(context).width),
                      ),

                    // Drawing Area
                    Positioned.fill(
                      child: GestureDetector(
                        onPanUpdate: (details) {
                          if (paintEnabled) {
                            setState(() {
                              points.add(details.localPosition);
                            });
                          }
                        },
                        onPanEnd: (_) => points.add(null),
                        child: CustomPaint(
                          painter:
                              DrawingPainter(points, brushColor, brushSize),
                          size: Size.infinite,
                        ),
                      ),
                    ),

                    // Editable Text
                    Positioned.fill(
                      child: Stack(
                          children: List.generate(
                        text.length,
                        (index) => Positioned(
                          left: textPosition[index].dx,
                          top: textPosition[index].dy,
                          child: GestureDetector(
                            onPanUpdate: (details) {
                              if (paintEnabled) return;
                              setState(() {
                                textPosition[index] = Offset(
                                  textPosition[index].dx + details.delta.dx,
                                  textPosition[index].dy + details.delta.dy,
                                );
                              });
                            },
                            onTap: editText,
                            child: Text(
                              text[index],
                              style: selectedStyle[index].copyWith(
                                color: textColor[index],
                                fontSize: fontSize[index],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      )),
                    ),

                    ///text adding screen
                    if (textEnabled) _textEditing(),
                    if (paintEnabled)
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      paintEnabled = false;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    margin: EdgeInsets.all(10),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: Text("Done"),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    setState(() {
                                      brushColor = brushColor == Colors.yellow
                                          ? Colors.red
                                          : Colors.yellow;
                                    });
                                  },
                                  icon: Icon(Icons.color_lens),
                                ),
                              ],
                            ),
                            Spacer(),
                          ],
                        ),
                      )
                  ],
                ),
              ),
              if (!textEnabled)
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Row(
                    children: [
                      width10,
                      Expanded(
                        child: TextFormField(
                          controller: captionController,
                          decoration: InputDecoration(
                            hintText: "Type caption...",
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            hintStyle:
                                TextStyle(color: Colors.white, fontSize: 15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(),
                            ),
                          ),
                        ),
                      ),
                      width10,
                      InkWell(
                        onTap: () => saveImage(),
                        child: CircleAvatar(
                          backgroundColor: AppColors.primary(context),
                          radius: 25,
                          child: Icon(Icons.send),
                        ),
                      ),
                      width10,
                    ],
                  ),
                ),
            ],
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (_image == null)
                FloatingActionButton(
                  onPressed: pickImage,
                  child: Icon(Icons.image),
                ),
            ],
          ),
        ),
      );
    });
  }

  _textEditing() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.grey(context).withOpacity(0.6),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30)),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text("Done"),
              ),
              InkWell(
                onTap: () => setState(() {
                  editingFontSize = editingFontSize + 5;
                }),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Icon(Icons.add),
                ),
              ),
              InkWell(
                onTap: () => setState(() {
                  editingFontSize = editingFontSize - 5;
                }),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30)),
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Icon(Icons.remove),
                ),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    editingTextColor = editingTextColor == Colors.white
                        ? Colors.black
                        : Colors.white;
                  });
                },
                icon: Icon(Icons.color_lens),
              ),
            ],
          ),
          Spacer(),
          TextFormField(
            style: editingStyle.copyWith(
              color: editingTextColor,
              fontSize: editingFontSize,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            autofocus: true,
            decoration: InputDecoration(
              hintText: "Enter Text",
              hintStyle: editingStyle.copyWith(
                color: editingTextColor,
                fontSize: editingFontSize,
                fontWeight: FontWeight.bold,
              ),
              border: InputBorder.none,
            ),
            onFieldSubmitted: (value) async {
              String? newText = value;
              setState(() {
                text.add(newText);
                textPosition.add(Offset(100, 100));
                selectedStyle.add(editingStyle);
                textColor.add(editingTextColor);
                fontSize.add(editingFontSize);
                textEnabled = false;
              });
            },
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              styles.length,
              (index) => InkWell(
                onTap: () => setState(() {
                  editingStyle = styles[index];
                }),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    "Aa",
                    style: styles[index],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Drawing Painter Class
class DrawingPainter extends CustomPainter {
  final List<Offset?> points;
  final Color color;
  final double strokeWidth;

  DrawingPainter(this.points, this.color, this.strokeWidth);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round
      ..blendMode = BlendMode.srcOver;

    for (int i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i]!, points[i + 1]!, paint);
      }
    }
  }

  @override
  bool shouldRepaint(DrawingPainter oldDelegate) => true;
}
