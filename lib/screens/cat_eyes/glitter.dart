import 'dart:math';

import 'package:essential_beauty/screens/cat_eyes/glitterDetails.dart';
import 'package:essential_beauty/widgets/custom_bottom_bar.dart';
import 'package:essential_beauty/widgets/nails/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../models/cat_eye_nail.dart';
import '../../shared/tablet_detector.dart';

class GlitterScreen extends StatelessWidget {
  final isTablet = TabletDetector.isTablet(MediaQueryData.fromView(WidgetsBinding.instance.window));

  GlitterScreen({super.key});

  final List<CatEyeNail> catEyeNails = const [
    CatEyeNail(imgPath: "assets/glitter/g1.png", ref: "G1", id: "1"),
    CatEyeNail(imgPath: "assets/glitter/g02.png", ref: "G2", id: "2"),
    CatEyeNail(imgPath: "assets/glitter/g03.png", ref: "G3", id: "3"),
    CatEyeNail(imgPath: "assets/glitter/g04.png", ref: "G4", id: "4"),
    CatEyeNail(imgPath: "assets/glitter/g5.png", ref: "G5", id: "5"),
    CatEyeNail(imgPath: "assets/glitter/g6.png", ref: "G6", id: "6"),
    CatEyeNail(imgPath: "assets/glitter/g7.png", ref: "G7", id: "7"),
    CatEyeNail(imgPath: "assets/glitter/g8.png", ref: "G8", id: "8"),
    CatEyeNail(imgPath: "assets/glitter/g9.png", ref: "G9", id: "9"),
    CatEyeNail(imgPath: "assets/glitter/g10.png", ref: "G10", id: "10"),
    CatEyeNail(imgPath: "assets/glitter/g11.png", ref: "G11", id: "11"),
    CatEyeNail(imgPath: "assets/glitter/g12.png", ref: "G12", id: "12"),
    CatEyeNail(imgPath: "assets/glitter/g13.png", ref: "G13", id: "13"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        playVideo: true,
      ),
      body: isTablet ? CatEyesTablet(catEyeNails: catEyeNails) : CatEyesPhone(catEyeNails: catEyeNails),
    );
  }
}

class CatEyesTablet extends StatelessWidget {
  const CatEyesTablet({
    super.key,
    required this.catEyeNails,
  });

  final List<CatEyeNail> catEyeNails;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            // const ButtonPlayVideo(play),
            Center(
              child: Container(
                // width: 1511.w,
                // decoration: const BoxDecoration(color: Color.fromRGBO(240, 240, 240, 1)),
                padding: const EdgeInsets.all(50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      alignment: Alignment.bottomCenter,
                      // width: MediaQuery.of(context).size.width - MediaQuery.of(context).size.width / 3.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          for (var nail in catEyeNails)
                            GestureDetector(
                              onTap: () {
                                Get.to(GlitterDetails(
                                  nail: nail,
                                  nails: catEyeNails,
                                ));
                              },
                              child: Column(
                                children: [
                                  Transform.rotate(
                                    angle: pi,
                                    child: Image.asset(
                                      nail.imgPath,
                                      height: 496.h,
                                      width: 133.w,
                                      // width: MediaQuery.of(context).size.width / 10,
                                    ),
                                  ),
                                  SizedBox(height: 15.h),
                                  Text(
                                    nail.ref,
                                    style: TextStyle(
                                      fontFamily: "Gotham",
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      fontSize: 32.sp,
                                    ),
                                  )
                                ],
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const CustomBottomBar(
          categoryName: 'glitter',
          heroTag: 'glitter',
          imagePath: "assets/categories/glitter.png",
        ),
      ],
    );
  }
}

class CatEyesPhone extends StatelessWidget {
  const CatEyesPhone({
    super.key,
    required this.catEyeNails,
  });

  final List<CatEyeNail> catEyeNails;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                // padding: const EdgeInsets.all(30),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        alignment: Alignment.bottomCenter,
                        width: MediaQuery.of(context).size.width - MediaQuery.of(context).size.width / 4.5,
                        child: Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.center,
                          children: [
                            for (var nail in catEyeNails)
                              SizedBox(
                                width: 97,
                                child: GestureDetector(
                                  onTap: () {
                                    Get.to(GlitterDetails(
                                      nail: nail,
                                      nails: catEyeNails,
                                    ));
                                  },
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        nail.imgPath,
                                        height: 178,
                                        width: 68,
                                        // width: MediaQuery.of(context).size.width / 10,
                                      ),
                                      const SizedBox(height: 15),
                                      Text(
                                        nail.ref,
                                        style: const TextStyle(
                                          fontFamily: "Gotham",
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 120),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        const CustomBottomBar(
          categoryName: 'glitter',
          heroTag: 'glitter',
          imagePath: "assets/categories/glitter.png",
        ),
      ],
    );
  }
}
