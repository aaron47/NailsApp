import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CatEyesScreen extends StatelessWidget {
  const CatEyesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cat Eyes'),
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
