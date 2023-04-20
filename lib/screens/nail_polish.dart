import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NailPolishScreen extends StatelessWidget {
  const NailPolishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nail Polish'),
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
