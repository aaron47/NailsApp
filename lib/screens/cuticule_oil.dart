import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CuticuleOilScreen extends StatelessWidget {
  const CuticuleOilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cuticule Oil'),
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
