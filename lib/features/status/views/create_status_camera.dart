import 'dart:math';

import 'package:camera/camera.dart';
import 'package:chat_app/core/all_fonts.dart';
import 'package:chat_app/core/color_list.dart';
import 'package:chat_app/core/size.dart';
import 'package:chat_app/features/status/view_models/bloc/status_bloc.dart';
import 'package:chat_app/route/navigation_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gal/gal.dart';
import 'package:go_router/go_router.dart';

import '../../../core/colors.dart';

class CreateStatusCameraPage extends StatefulWidget {
  const CreateStatusCameraPage({super.key});

  @override
  State<CreateStatusCameraPage> createState() => _CreateStatusCameraPageState();
}

class _CreateStatusCameraPageState extends State<CreateStatusCameraPage>
    with SingleTickerProviderStateMixin {
  List<CameraDescription> cameras = [];
  TextEditingController textController = TextEditingController(),
      captionController = TextEditingController();
  CameraController? controller;
  bool isTorchOn = false;
  int currentPage = 0;
  late TabController _tabController;
  late int selectedColorIndex;
  late int selectedStyleIndex;
  bool isFirst = true;

  @override
  void initState() {
    final value = Random().nextInt(allColors.length);
    selectedColorIndex = value;
    selectedStyleIndex = 0;
    _setupCamera();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(
      () {
        if (_tabController.index != currentPage) {
          currentPage = _tabController.index;
          setState(() {});
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: TabBarView(controller: _tabController, children: [
                  Stack(
                    children: [
                      if (controller != null)
                        Positioned.fill(child: CameraPreview(controller!)),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                                onTap: () {
                                  if (isTorchOn) {
                                    controller!.setFlashMode(FlashMode.off);
                                  } else {
                                    controller!.setFlashMode(FlashMode.torch);
                                  }
                                  isTorchOn = !isTorchOn;
                                },
                                child: Icon(Icons.flashlight_on_rounded,
                                    size: 30)),
                            InkWell(
                                onTap: () async {
                                  XFile? picture =
                                      await controller?.takePicture();
                                  if (picture == null) return;
                                  Gal.putImage(picture.path);
                                  context.read<StatusBloc>().add(
                                      StatusEvent.selectFile(
                                          path: picture.path));
                                  context.pop();
                                  NavigationUtils.editImageStatus(context);
                                },
                                child: Icon(Icons.radio_button_on_sharp,
                                    size: 80)),
                            InkWell(
                                onTap: () {
                                  if (cameras.isEmpty) return;
                                  controller?.setDescription(cameras.last);
                                  if (isFirst) {
                                  } else {
                                    controller?.setDescription(cameras.first);
                                  }
                                  isFirst = !isFirst;
                                },
                                child:
                                    Icon(Icons.rotate_right_rounded, size: 30))
                          ],
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Positioned.fill(
                        child: Container(
                          color: allColors[selectedColorIndex],
                          child: Center(
                            child: TextFormField(
                              controller: textController,
                              maxLines: 10,
                              onChanged: (value) => setState(() {}),
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Type a status",
                                hintStyle:
                                    styles[selectedStyleIndex].copyWith(),
                              ),
                              style: styles[selectedStyleIndex]
                                  .copyWith(fontSize: 20),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ]),
              ),
              if (textController.text.isNotEmpty)
                Row(
                  children: [
                    width10,
                    Expanded(
                      child: TextFormField(
                        controller: captionController,
                        decoration: InputDecoration(
                          hintText: "Type caption...",
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
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
                      onTap: () {
                        context.read<StatusBloc>().add(
                              StatusEvent.createTextStatus(
                                text: textController.text,
                                colorIndex: selectedColorIndex,
                                styleIndex: selectedStyleIndex,
                                caption: (captionController.text.isNotEmpty)
                                    ? captionController.text
                                    : null,
                              ),
                            );
                        context.pop();
                      },
                      child: CircleAvatar(
                        backgroundColor: AppColors.primary(context),
                        radius: 25,
                        child: Icon(Icons.send),
                      ),
                    ),
                    width10,
                  ],
                )
              else
                Row(
                  children: [
                    TabBar(
                      controller: _tabController,
                      tabAlignment: TabAlignment.start,
                      isScrollable: true,
                      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                      dividerHeight: 0,
                      dividerColor: Colors.transparent,
                      indicatorColor: Colors.transparent,
                      labelColor: Colors.black,
                      onTap: (value) => setState(() {
                        currentPage = value;
                      }),
                      tabs: [
                        Tab(
                          child: Container(
                            width: 100,
                            padding: EdgeInsets.symmetric(vertical: 7),
                            decoration: BoxDecoration(
                                color: currentPage == 0 ? Colors.grey : null,
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(color: Colors.grey, width: 0.5)),
                            child: Text(
                              "Camera",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            width: 100,
                            padding: EdgeInsets.symmetric(vertical: 7),
                            decoration: BoxDecoration(
                                color: currentPage == 1 ? Colors.grey : null,
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(color: Colors.grey, width: 0.5)),
                            child: Text("Text", textAlign: TextAlign.center),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
            ],
          ),
          Positioned(
            top: MediaQuery.paddingOf(context).top,
            left: 10,
            right: 10,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(Colors.black54)),
                    icon: Icon(Icons.close, size: 30)),
                if (currentPage == 1) ...[
                  Spacer(),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          final value = Random().nextInt(styles.length);
                          selectedStyleIndex = value;
                        });
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.black54)),
                      icon: Icon(Icons.text_fields_sharp, size: 30)),
                  width10,
                  IconButton(
                      onPressed: () {
                        setState(() {
                          final value = Random().nextInt(allColors.length);
                          selectedColorIndex = value;
                        });
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.black54)),
                      icon: Icon(Icons.color_lens, size: 30))
                ]
              ],
            ),
          ),
        ],
      ),
    );
  }

  void setCamera(bool front) async {
    if (controller != null) {
      await controller!.dispose(); // Dispose old controller before switching
    }

    CameraDescription selectedCamera = front
        ? cameras.firstWhere(
            (camera) => camera.lensDirection == CameraLensDirection.front)
        : cameras.firstWhere(
            (camera) => camera.lensDirection == CameraLensDirection.back);

    controller = CameraController(selectedCamera, ResolutionPreset.medium);

    await controller?.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((error) {
      print(error);
    });
  }

  void _setupCamera() async {
    cameras = await availableCameras();
    if (cameras.isNotEmpty) {
      setCamera(false);
    }
  }
}
