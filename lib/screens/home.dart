import 'package:essential_beauty/screens/builder_gel/builder_gel.dart';
import 'package:essential_beauty/screens/builder_gel/gel_fluid.dart';
import 'package:essential_beauty/screens/cat_eyes/cat_eyes.dart';
import 'package:essential_beauty/screens/cat_eyes/glitter.dart';
import 'package:essential_beauty/screens/cat_eyes/holographique.dart';
import 'package:essential_beauty/screens/rubber_base_gel/rubber_base_gel.dart';
import 'package:essential_beauty/widgets/categories/category.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../shared/tablet_detector.dart';
import 'cuticul_oil/cuticule_oil.dart';
import 'flasch_nail/flasch_nail.dart';
import 'nails_polish/nails_polish.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TabletDetector.isTablet(MediaQueryData.fromView(WidgetsBinding.instance.window)) ? const HomeScreenTablet() : const HomeScreenPhone();
  }
}

class HomeScreenTablet extends StatelessWidget {
  const HomeScreenTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Homebackgound.png"), // Replace with your image asset path
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(left: 50),
                  child: Image.asset(
                    "assets/EssentialAppBar.png",
                    fit: BoxFit.contain,
                    // height: MediaQuery.of(context).size.height * 0.1,
                    width: 320,
                    height: 280,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch, // Use CrossAxisAlignment.stretch
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Category(
                            imgPath: "assets/categories/tablette/Component 15.png",
                            categoryName: 'Nails Polish',
                            onChangeScreen: () {
                              Get.to(const NailsPolishScreen(), duration: const Duration(milliseconds: 800));
                            },
                            tag: 'NailsPolish',
                          ),
                          Category(
                            imgPath: "assets/categories/tablette/Component 23.png",
                            categoryName: 'Rubber Base Gel',
                            onChangeScreen: () {
                              Get.to(const RubberBaseGelScreen(), duration: const Duration(milliseconds: 800));
                            },
                            tag: 'RubberBaseGel',
                          ),
                          Category(
                            imgPath: "assets/categories/tablette/Component 17.png",
                            categoryName: 'Builder Gel',
                            onChangeScreen: () {
                              Get.to(BuilderGelScreen(), duration: const Duration(milliseconds: 800));
                            },
                            tag: 'BuilderGel',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Category(
                            imgPath: "assets/categories/tablette/Component 16.png",
                            categoryName: 'Fluid Gel',
                            onChangeScreen: () {
                              Get.to(GelFluidScreen(), duration: const Duration(milliseconds: 800));
                            },
                            tag: 'gelFluid',
                          ),
                          Category(
                            imgPath: "assets/categories/tablette/Component 18.png",
                            categoryName: 'Cat Eyes',
                            onChangeScreen: () {
                              Get.to(CatEyesScreen(), duration: const Duration(milliseconds: 800));
                            },
                            tag: 'CatEyes',
                          ),
                          Category(
                            imgPath: "assets/categories/tablette/Component 19.png",
                            categoryName: 'holographie',
                            onChangeScreen: () {
                              Get.to(HolographiqueScreen(), duration: const Duration(milliseconds: 800));
                            },
                            tag: 'holographie',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Category(
                            imgPath: "assets/categories/tablette/Component 20.png",
                            categoryName: 'Flasch Nail',
                            onChangeScreen: () {
                              Get.to(FlaschNailScreen(), duration: const Duration(milliseconds: 800));
                            },
                            tag: 'FlaschNail',
                          ),
                          Category(
                            imgPath: "assets/categories/tablette/Component 21.png",
                            categoryName: 'glitter',
                            onChangeScreen: () {
                              Get.to(GlitterScreen(), duration: const Duration(milliseconds: 800));
                            },
                            tag: 'glitter',
                          ),
                          Category(
                            imgPath: "assets/categories/tablette/Component 22.png",
                            categoryName: 'Cuticule Oil',
                            onChangeScreen: () {
                              Get.to(CuticuleOilScreen(), duration: const Duration(milliseconds: 800));
                            },
                            tag: 'CuticuleOil',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(left: 50),
                  child: Image.asset(
                    "assets/label_contact_home.png",
                    fit: BoxFit.contain,
                    // height: MediaQuery.of(context).size.height * 0.1,
                    width: 420,
                    height: 80,
                  ),
                ),
              ),
              Align(
                            // margin: const EdgeInsets.only(left: 20),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "MADE WITH LOVE BY SLOTH-LAB",
                                  style: TextStyle(
                                    fontFamily: "Gotham",
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w700,
                                    color: const Color.fromRGBO(150, 150, 150, 1),
                                  ),
                                ),
                                Image.asset("assets/sloth.png")
                              ],
                            ),
                          ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeScreenPhone extends StatelessWidget {
  const HomeScreenPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Homebackgound.png"), // Replace with your image asset path
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 50),
                  child: Image.asset(
                    "assets/EssentialAppBar.png",
                    fit: BoxFit.contain,
                    // height: MediaQuery.of(context).size.height * 0.1,
                    width: 120,
                    height: 80,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch, // Use CrossAxisAlignment.stretch
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Category(
                        imgPath: "assets/categories/Component 6.png",
                        categoryName: 'Nails Polish',
                        onChangeScreen: () {
                          Get.to(const NailsPolishScreen(), duration: const Duration(milliseconds: 800));
                        },
                        tag: 'NailsPolish',
                      ),
                      Category(
                        imgPath: "assets/categories/Component 7.png",
                        categoryName: 'Rubber Base Gel',
                        onChangeScreen: () {
                          Get.to(const RubberBaseGelScreen(), duration: const Duration(milliseconds: 800));
                        },
                        tag: 'RubberBaseGel',
                      ),
                      Category(
                        imgPath: "assets/categories/Component 8.png",
                        categoryName: 'Builder Gel',
                        onChangeScreen: () {
                          Get.to(BuilderGelScreen(), duration: const Duration(milliseconds: 800));
                        },
                        tag: 'BuilderGel',
                      ),
                      Category(
                        imgPath: "assets/categories/Component 9.png",
                        categoryName: 'Fluid Gel',
                        onChangeScreen: () {
                          Get.to(GelFluidScreen(), duration: const Duration(milliseconds: 800));
                        },
                        tag: 'gelFluid',
                      ),
                      Category(
                        imgPath: "assets/categories/Component 10.png",
                        categoryName: 'Cat Eyes',
                        onChangeScreen: () {
                          Get.to(CatEyesScreen(), duration: const Duration(milliseconds: 800));
                        },
                        tag: 'CatEyes',
                      ),
                      Category(
                        imgPath: "assets/categories/Component 11.png",
                        categoryName: 'holographie',
                        onChangeScreen: () {
                          Get.to(HolographiqueScreen(), duration: const Duration(milliseconds: 800));
                        },
                        tag: 'holographie',
                      ),
                      Category(
                        imgPath: "assets/categories/Component 12.png",
                        categoryName: 'Flasch Nail',
                        onChangeScreen: () {
                          Get.to(FlaschNailScreen(), duration: const Duration(milliseconds: 800));
                        },
                        tag: 'FlaschNail',
                      ),
                      Category(
                        imgPath: "assets/categories/Component 13.png",
                        categoryName: 'glitter',
                        onChangeScreen: () {
                          Get.to(GlitterScreen(), duration: const Duration(milliseconds: 800));
                        },
                        tag: 'glitter',
                      ),
                      Category(
                        imgPath: "assets/categories/Component 14.png",
                        categoryName: 'Cuticule Oil',
                        onChangeScreen: () {
                          Get.to(CuticuleOilScreen(), duration: const Duration(milliseconds: 800));
                        },
                        tag: 'CuticuleOil',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
