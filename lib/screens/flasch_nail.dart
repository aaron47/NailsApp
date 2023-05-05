import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlaschNailScreen extends StatelessWidget {
  const FlaschNailScreen({super.key});

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
