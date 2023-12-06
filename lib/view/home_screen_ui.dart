import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final HomeScreenController controller = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TapTime Tracker"),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(controller.isSuccess==true?"Success!\nSuccess Count : ${controller.successCount.value}":controller.isSuccess==false?"Try Again!\nSuccess Count : ${controller.successCount.value}":""),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        controller.handleTap();
                      },
                      child: const Text("Tap Me :)")),
                  Text(controller.randomSeconds.toString()),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
