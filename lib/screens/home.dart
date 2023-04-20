import 'package:essential_beauty/screens/flasch_nail.dart';
import 'package:essential_beauty/screens/rubber_base_gel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'builder_gel.dart';
import 'cat_eyes.dart';
import 'cuticule_oil.dart';
import 'nail_polish.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Essential Beauty'),
      ),
      body: Stack(
        children: [
          Center(
            child: GridView.count(
              primary: false,
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.2),
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              crossAxisCount: 2,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Get.to(const NailPolishScreen());
                  },
                  child: const Text("Go to nail polish screen"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(const RubberBaseGelScreen());
                  },
                  child: const Text("Go to Rubber Base Gel screen"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(const FlaschNailScreen());
                  },
                  child: const Text("Go to Flasch Nail screen"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(const CatEyesScreen());
                  },
                  child: const Text("Go to Cat Eyes screen"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(const BuilderGelScreen());
                  },
                  child: const Text("Go to Builder Gel screen"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(const CuticuleOilScreen());
                  },
                  child: const Text("Go to Cuticule Oil screen"),
                ),
              ],
            ),
          ),
          Center(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text("MADE WITH LOVE BY SLOTH-LAB",
                    style: Theme.of(context).textTheme.titleSmall),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
