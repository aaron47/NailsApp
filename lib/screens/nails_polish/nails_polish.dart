import 'package:essential_beauty/screens/how_to_apply.dart';
import 'package:essential_beauty/screens/nails_polish/nails_polish_matte.dart';
import 'package:essential_beauty/shared/matte_controller.dart';
import 'package:essential_beauty/widgets/custom_bottom_bar.dart';
import 'package:essential_beauty/widgets/nails/custom_app_bar.dart';
import 'package:essential_beauty/widgets/nails/nails_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../shared/tablet_detector.dart';

class NailsPolishScreen extends StatelessWidget {
  const NailsPolishScreen({super.key});

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
                          margin: const EdgeInsets.only(
                            left: 20,
                            top: 40
                          ),
                          child: InkWell(
                            onTap: () {
                              matteController.setMatteTrue();
                              Get.off(const NailsPolishMatteScreen());
                            },
                            child: Stack(
                              children: [
                                Image.asset("assets/nails/matte/RectangleMatteBlanc.png", width: 100, height: 70, fit: BoxFit.contain),
                              ],
                            ),
                          ),
                        ),
                        const NailsRow(),
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
                      matteController.setMatteTrue();
                      Get.off(const NailsPolishMatteScreen());
                    },
                    child: Stack(
                      children: [
                        Image.asset("assets/nails/matte/RectangleMatteBlanc.png", width: 75, height: 45, fit: BoxFit.contain),
                      ],
                    ),
                  ),

                  // child: ElevatedButton(
                  //   onPressed: () {
                  //     Get.off(const NailsPolishMatteScreen());
                  //   },
                  //   style: ButtonStyle(
                  //     backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  //       (Set<MaterialState> states) {
                  //         return const Color.fromRGBO(20, 77, 81,
                  //             0.8); // Set the color when isMatte is true
                  //       },
                  //     ),
                  //   ),
                  //   child: const Text(
                  //     "MATTE",
                  //     style: TextStyle(
                  //       fontFamily: "Gotham",
                  //       fontSize: 14,
                  //       fontWeight: FontWeight.w700,
                  //       color: Color.fromRGBO(150, 150, 150, 1),
                  //     ),
                  //   ),
                  // ),
                ),
                const NailsRow(),
                const SizedBox(
                  height: 100,
                )
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
