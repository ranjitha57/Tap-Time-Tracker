import 'dart:math';
import 'package:get/get.dart';

class HomeScreenController extends GetxController{
  var successCount = 0.obs;
  var randomSeconds = 0.obs;
  var isSuccess;

  void handleTap() {
    int currentSeconds = DateTime.now().second;
    randomSeconds.value = Random().nextInt(60);

    if (randomSeconds.value == currentSeconds) {
      successCount++;
      isSuccess = true;
    } else {
      isSuccess = false;
    }
  }

}