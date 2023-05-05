import 'package:essential_beauty/screens/builder_gel.dart';
import 'package:essential_beauty/screens/cat_eyes.dart';
import 'package:essential_beauty/screens/cuticule_oil.dart';
import 'package:essential_beauty/screens/rubber_base_gel.dart';
import 'package:essential_beauty/widgets/categories/category.dart';
import 'flasch_nail.dart';
import 'nails_polish.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.25,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/essential.png",
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Category(
                      imgPath: "assets/categories/RubberBaseGel.png",
                      categoryName: 'Rubber Base Gel',
                      onChangeScreen: () {
                        Get.to(const RubberBaseGelScreen());
                      },
                    ),
                    Category(
                      imgPath: "assets/categories/FlaschNail.png",
                      categoryName: 'Flasch Nail',
                      onChangeScreen: () {
                        Get.to(FlaschNailScreen());
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Category(
                      imgPath: "assets/categories/NailsPolish.png",
                      categoryName: 'Nails Polish',
                      onChangeScreen: () {
                        Get.to(const NailsPolishScreen());
                      },
                    ),
                    Category(
                      imgPath: "assets/categories/CatEyes.png",
                      categoryName: 'Cat Eyes',
                      onChangeScreen: () {
                        Get.to(const CatEyesScreen());
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Category(
                        imgPath: "assets/categories/BuilderGel.png",
                        categoryName: 'Builder Gel',
                        onChangeScreen: () {
                          Get.to(const BuilderGelScreen());
                        }),
                    Category(
                      imgPath: "assets/categories/CuticuleOil.png",
                      categoryName: 'Cuticule Oil',
                      onChangeScreen: () {
                        Get.to(const CuticuleOilScreen());
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Center(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "MADE WITH LOVE BY SLOTH-LAB",
                  style: TextStyle(
                    fontSize: 7,
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(20, 77, 81, 1),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
