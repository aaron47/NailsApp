import 'package:essential_beauty/shared/matte_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../shared/tablet_detector.dart';
import 'Nail.dart';

class CalqueMatteController extends GetxController {
  var isCalqueMatteActivated = true.obs;

  void toggleCalque() {
    isCalqueMatteActivated.value = !isCalqueMatteActivated.value;
  }
}

class NailCard extends StatefulWidget {
  const NailCard({super.key, required this.nail});

  final Nail nail;

  @override
  State<NailCard> createState() => _NailCardState();
}

class _NailCardState extends State<NailCard> {
  final isTablet = TabletDetector.isTablet(
      MediaQueryData.fromWindow(WidgetsBinding.instance.window));
  final CalqueMatteController calqueController =
      Get.put(CalqueMatteController());
  bool showMatte = true;
  List<String> nonMatteNails = [
    "055",
    "056",
    "057",
    "058",
    "059",
    "060",
    "076",
    "077",
    "078",
    "079",
    "080",
    "081",
    "082",
    "086",
    "087",
    "088",
    "089",
    "101",
    "102",
    "103",
    "104"
  ];

  void toggleShowMatte() {
    setState(() {
      showMatte = !showMatte;
    });
  }

  @override
  Widget build(BuildContext context) {
    final matteControler = Get.put(MatteController());

    final width = TabletDetector.isTablet(
      MediaQueryData.fromWindow(WidgetsBinding.instance.window),
    )
        ? 92.12.w.toDouble()
        : 46.0;
    final height = TabletDetector.isTablet(
      MediaQueryData.fromWindow(WidgetsBinding.instance.window),
    )
        ? 203.79.h.toDouble()
        : 107.0;
    return nonMatteNails.contains(widget.nail.id)
        ? Stack(
            children: [
              isTablet
                  ? Image.asset(
                      "assets/nails/Card.png",
                      width: 379.13.w,
                      height: 630.79.h,
                      fit: BoxFit.contain,
                    )
                  : Image.asset(
                      "assets/nails/Card.png",
                      // width: 183.13.w,
                      // height: 304.79.h,
                      fit: BoxFit.contain,
                    ),
              Positioned.fill(
                child: Align(
                  child: isTablet
                      ? Hero(
                          tag: "NailsPolish${widget.nail.id}",
                          child: Image.asset(
                            "assets/nails/large/${widget.nail.id}.png",
                            fit: BoxFit.contain,
                            height: 478.h,
                            width: 216.w,
                            // height: 200,
                          ),
                        )
                      : Image.asset(
                          "assets/nails/large/${widget.nail.id}.png",
                          fit: BoxFit.contain,
                          height: 700.h,
                          width: 500.w,
                          // height: 200,
                        ),
                ),
              )
            ],
          )
        : Obx(
            () => GestureDetector(
              onTap: toggleShowMatte,
              child: Column(
                children: [
                  Stack(
                    children: [
                      isTablet
                          ? Image.asset(
                              "assets/nails/Card.png",
                              width: 379.13.w,
                              height: 630.79.h,
                              fit: BoxFit.contain,
                            )
                          : Image.asset(
                              "assets/nails/Card.png",
                              // width: 183.13.w,
                              // height: 304.79.h,
                              fit: BoxFit.contain,
                            ),
                      matteControler.isMatte.value == true
                          ? Positioned.fill(
                              child: Align(
                                child: AnimatedCrossFade(
                                  secondChild: Hero(
                                    tag: "NailsPolishMatt${widget.nail.id}",
                                    child: widget.nail.imgPath != null &&
                                            !nonMatteNails
                                                .contains(widget.nail.id)
                                        ? Image.asset(
                                            // widget.nail.imgPath!,
                                            "assets/nails/matte/${widget.nail.id}.png",
                                            fit: BoxFit.contain,
                                            height: isTablet ? 478.h : 231,
                                            width: isTablet ? 216.w : 104,
                                            // height: 200,
                                          )
                                        : Image.asset(
                                            // widget.nail.imgPath!,
                                            "assets/nails/large/${widget.nail.id}.png",
                                            fit: BoxFit.contain,
                                            height: isTablet ? 478.h : 231,
                                            width: isTablet ? 216.w : 104,
                                            // height: 200,
                                          ),
                                  ),
                                  firstChild: widget.nail.imgPath != null
                                      ? isTablet
                                          ? Hero(
                                              tag:
                                                  "NailsPolish${widget.nail.id}",
                                              child: Image.asset(
                                                "assets/nails/large/${widget.nail.id}.png",
                                                fit: BoxFit.contain,
                                                height: 478.h,
                                                width: 216.w,
                                                // height: 200,
                                              ),
                                            )
                                          : Image.asset(
                                              "assets/nails/large/${widget.nail.id}.png",
                                              fit: BoxFit.contain,
                                              height: 700.h,
                                              width: 500.w,
                                              // height: 200,
                                            )
                                      : Image.asset(
                                          // widget.nail.imgPath!,
                                          "assets/nails/large/${widget.nail.id}.png",
                                          fit: BoxFit.contain,
                                          height: isTablet ? 478.h : 231,
                                          width: isTablet ? 216.w : 104,
                                          // height: 200,
                                        ),
                                  crossFadeState: showMatte
                                      ? CrossFadeState.showSecond
                                      : CrossFadeState.showFirst,
                                  duration: const Duration(milliseconds: 300),
                                ),
                              ),
                            )
                          : Positioned.fill(
                              child: Align(
                                child: AnimatedCrossFade(
                                  firstChild: Hero(
                                    tag: "NailsPolishMatt${widget.nail.id}",
                                    child: widget.nail.imgPath != null &&
                                            !nonMatteNails
                                                .contains(widget.nail.id)
                                        ? Image.asset(
                                            // widget.nail.imgPath!,
                                            "assets/nails/matte/${widget.nail.id}.png",
                                            fit: BoxFit.contain,
                                            height: isTablet ? 478.h : 231,
                                            width: isTablet ? 216.w : 104,
                                            // height: 200,
                                          )
                                        : SizedBox(
                                            height: isTablet ? 478.h : 231,
                                            width: isTablet ? 216.w : 104,
                                          ),
                                  ),
                                  secondChild: widget.nail.imgPath != null
                                      ? isTablet
                                          ? Hero(
                                              tag:
                                                  "NailsPolish${widget.nail.id}",
                                              child: Image.asset(
                                                "assets/nails/large/${widget.nail.id}.png",
                                                fit: BoxFit.contain,
                                                height: 478.h,
                                                width: 216.w,
                                                // height: 200,
                                              ),
                                            )
                                          : Image.asset(
                                              "assets/nails/large/${widget.nail.id}.png",
                                              fit: BoxFit.contain,
                                              height: 700.h,
                                              width: 500.w,
                                              // height: 200,
                                            )
                                      : SizedBox(
                                          height: 478.h,
                                          width: 216.w,
                                        ),
                                  crossFadeState: showMatte
                                      ? CrossFadeState.showSecond
                                      : CrossFadeState.showFirst,
                                  duration: const Duration(milliseconds: 300),
                                ),
                              ),
                            ),
                    ],
                  ),
                  const SizedBox(height: 12.5),
                  if (!nonMatteNails.contains(widget.nail.id))
                    InkWell(
                      onTap: () {
                        toggleShowMatte();
                      },
                      child: Stack(
                        children: [
                          !showMatte
                              ? Image.asset(
                                  "assets/nails/matte/RectangleMatteVert.png",
                                  width: isTablet ? 180 : 100,
                                  height: isTablet ? 100 : 70,
                                  fit: BoxFit.fill,
                                )
                              : Image.asset(
                                  "assets/nails/matte/RectangleMatteBlanc.png",
                                  width: isTablet ? 180 : 100,
                                  height: isTablet ? 100 : 70,
                                  fit: BoxFit.fill,
                                ),
                          // Positioned.fill(
                          //   child: Align(
                          //     child: Text(
                          //       "MATTE",
                          //       style: TextStyle(
                          //         color: showMatte
                          //             ? const Color.fromRGBO(47, 90, 92, 1)
                          //             : Colors.white,
                          //         fontSize: isTablet ? 30.sp : 70.sp,
                          //         fontWeight: FontWeight.w700,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                ],
              ),
            ),
          );
  }
}
