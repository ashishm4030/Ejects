import 'dart:io';

import 'package:flick_video_player/flick_video_player.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:video_player/video_player.dart';

class AddPhotoScreenController extends GetxController {
  //TODO: Implement AddPhotoScreenController
  final maxLines = 5;

  FlickManager? flickManager;

  File? image;
  String? fileName;
  pickImage() async {
    final pickedImage = await ImagePicker().getImage(source: ImageSource.gallery, imageQuality: 80);

    image = File(pickedImage!.path);
    if (image != null) {
      fileName = image!.path.split('/').last;
    }
    update();
  }

  pickVideo() async {
    final pickedVideo = await ImagePicker().pickVideo(source: ImageSource.gallery);

    image = File(pickedVideo!.path);
    print(image);
    print('image');
    if (image != null) {
      fileName = image!.path.split('/').last;
    }
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.file(image!),
    );
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
