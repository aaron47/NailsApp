import 'package:essential_beauty/widgets/nails/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlaschNailScreen extends StatelessWidget {
  FlaschNailScreen({super.key});

  final List<String> flaschNailImages = [
    "assets/flasch_nail/113.png",
    "assets/flasch_nail/114.png",
    "assets/flasch_nail/115.png",
    "assets/flasch_nail/116.png",
    "assets/flasch_nail/117.png",
    "assets/flasch_nail/118.png",
    "assets/flasch_nail/119.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: Colors.transparent,
        elevation: 0,
        onPressed: () {
          Get.back();
        },
        child: Image.asset(
          "assets/categories/FlaschNail.png",
        ),
      ),
      appBar: const CustomAppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: Row(
            children: [for (var nail in flaschNailImages) Image.asset(nail)],
          ),
        ),
      ),
    );
  }
}
