import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RubberBaseGelScreen extends StatelessWidget {
  const RubberBaseGelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rubber Base Gel'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: const Text("Go back!"),
        ),
      ),
    );
  }
}
