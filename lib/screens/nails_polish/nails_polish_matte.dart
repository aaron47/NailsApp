import 'package:essential_beauty/screens/how_to_apply.dart';
import 'package:essential_beauty/shared/matte_controller.dart';
import 'package:essential_beauty/widgets/custom_bottom_bar.dart';
import 'package:essential_beauty/widgets/nails/custom_app_bar.dart';
import 'package:essential_beauty/widgets/nails/nails_row_matte.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../shared/tablet_detector.dart';
import 'nails_polish.dart';

class NailsPolishMatteScreen extends StatelessWidget {
  const NailsPolishMatteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TabletDetector.isTablet(
            MediaQueryData.fromWindow(WidgetsBinding.instance.window))
        ? const NailsPolishTablet()
        : const NailsPolishMobile();
  }
}

class NailsPolishTablet extends StatelessWidget {
  const NailsPolishTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final matteController = Get.put(MatteController());
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.08,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: const EdgeInsets.only(top: 80),
                    width: 158.w,
                    height: 147.h,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(75),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(75),
                      ),
                      image: DecorationImage(
                        image: AssetImage("assets/AppBarBackground.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(const HowToApplyScreen());
                      },
                      child: Image.asset(
                        "assets/PlayButtonLarge.png",
                        width: 65.w,
                        height: 65.h,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(240, 240, 240, 1)),
                    // padding: const EdgeInsets.all(50),
                    child: Column(
                      children: [
                        Center(
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 100, top: 50),
                            child: const Text(
                              "Nails Polish",
                              style: TextStyle(
                                fontSize: 32,
                                fontFamily: "Gotham",
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(35, 40, 55, 1),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 20,
                          ),
                          child: InkWell(
                            onTap: () {
                              matteController.setMatteFalse();
                              Get.off(const NailsPolishScreen());
                            },
                            child: Stack(
                              children: [
                                Image.asset(
                                    "assets/nails/matte/RectangleMatteVert.png",
                                    width: 100,
                                    height: 70,
                                    fit: BoxFit.contain),
                                const Positioned.fill(
                                  child: Align(
                                    child: Text(
                                      "MATTE",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const NailsRowMatte()
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.08,
              ),
            ],
          ),
          const CustomBottomBar(
            imagePath: "assets/categories/NailsPolishLarge.png",
            heroTag: "NailsPolish",
            categoryName: "NAILS POLISH",
          ),
        ],
      ),
    );
  }
}

class NailsPolishMobile extends StatelessWidget {
  const NailsPolishMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final matteController = Get.put(MatteController());
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 20, top: 50),
                    child: const Text(
                      "Nails Polish",
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: "Gotham",
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(35, 40, 55, 1),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: InkWell(
                    onTap: () {
                      matteController.setMatteTrue();
                      Get.off(const NailsPolishScreen());
                    },
                    child: Stack(
                      children: [
                        Image.asset("assets/nails/matte/RectangleMatteVert.png",
                            width: 75, height: 45, fit: BoxFit.contain),
                        const Positioned.fill(
                            child: Align(
                          child: Text(
                            "MATTE",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
                const NailsRowMatte(),
              ],
            ),
          ),
          const CustomBottomBar(
            imagePath: "assets/categories/NailsPolishLarge.png",
            heroTag: "NailsPolish",
            categoryName: "NAILS POLISH",
          ),
        ],
      ),
    );
  }
}
