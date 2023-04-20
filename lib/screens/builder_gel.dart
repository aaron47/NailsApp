import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuilderGelScreen extends StatelessWidget {
  const BuilderGelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Builder Gel'),
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
