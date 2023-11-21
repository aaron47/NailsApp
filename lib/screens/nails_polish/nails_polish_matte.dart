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
    return TabletDetector.isTablet(MediaQueryData.fromView(WidgetsBinding.instance.window)) ? const NailsPolishTablet() : const NailsPolishMobile();
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
      appBar: CustomAppBar(
        playVideo: true,
      ),
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: const BoxDecoration(color: Color.fromRGBO(240, 240, 240, 1)),
                    // padding: const EdgeInsets.all(50),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20, top: 40),
                          child: InkWell(
                            onTap: () {
                              Get.off(const NailsPolishScreen())?.then((value) => matteController.setMatteFalse());
                            },
                            child: Stack(
                              children: [
                                Image.asset("assets/nails/matte/RectangleMatteVert.png", width: 100, height: 70, fit: BoxFit.contain),
                              ],
                            ),
                          ),
                        ),
                        const NailsRowMatte(),
                        const SizedBox(height: 100),
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
            imagePath: "assets/categories/NailsPolish.png",
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
      appBar: CustomAppBar(
        playVideo: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      Get.off(const NailsPolishScreen())?.then((value) => matteController.setMatteFalse());
                    },
                    child: Stack(
                      children: [
                        Image.asset("assets/nails/matte/RectangleMatteVert.png", width: 75, height: 45, fit: BoxFit.contain),
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
                const SizedBox(height: 100),
              ],
            ),
          ),
          const CustomBottomBar(
            imagePath: "assets/categories/NailsPolish.png",
            heroTag: "NailsPolish",
            categoryName: "NAILS POLISH",
          ),
        ],
      ),
    );
  }
}
