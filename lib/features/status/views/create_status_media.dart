import 'package:chat_app/features/status/view_models/bloc/status_bloc.dart';
import 'package:chat_app/route/navigation_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:photo_manager/photo_manager.dart';

class CreateStatusMedia extends StatefulWidget {
  const CreateStatusMedia({super.key});

  @override
  State<CreateStatusMedia> createState() => _CreateStatusMediaState();
}

class _CreateStatusMediaState extends State<CreateStatusMedia> {
  List<AssetEntity> _images = [];

  @override
  void initState() {
    super.initState();
    _loadImages();
  }

  Future<void> _loadImages() async {
    // Request permission
    final PermissionState permission =
        await PhotoManager.requestPermissionExtend();
    if (permission.isAuth) {
      // Fetch images
      List<AssetPathEntity> albums =
          await PhotoManager.getAssetPathList(type: RequestType.image);
      if (albums.isNotEmpty) {
        List<AssetEntity> media = await albums[0]
            .getAssetListPaged(page: 0, size: 100); // Load 100 images
        setState(() => _images = media);
      }
    } else {
      PhotoManager.openSetting(); // Ask user to enable permission
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Status'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        itemCount: _images.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return InkWell(
              onTap: () => NavigationUtils.createStatusCamera(context),
              child: const Icon(
                Icons.camera_alt_outlined,
                size: 50,
              ),
            );
          }
          return FutureBuilder(
            future: _images[index - 1].thumbnailData,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done &&
                  snapshot.data != null) {
                return InkWell(
                    onTap: () async {
                      final file = await _images[index - 1].file;
                      if (file != null && mounted) {
                        context
                            .read<StatusBloc>()
                            .add(StatusEvent.selectFile(path: file.path));
                        NavigationUtils.editImageStatus(context);
                      }
                    },
                    child: Image.memory(snapshot.data!, fit: BoxFit.cover));
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          );
        },
      ),
    );
  }
}
