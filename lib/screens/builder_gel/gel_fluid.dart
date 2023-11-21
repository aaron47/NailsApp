import 'package:essential_beauty/models/gel_builder.dart';
import 'package:essential_beauty/screens/builder_gel/gel_fluid_details.dart';
import 'package:essential_beauty/screens/rubber_base_gel/rubber_base_gel.dart';
import 'package:essential_beauty/shared/tablet_detector.dart';
import 'package:essential_beauty/widgets/custom_bottom_bar.dart';
import 'package:essential_beauty/widgets/nails/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class GelFluidScreen extends StatelessWidget {
  GelFluidScreen({super.key});

  final List<BuilderGel> builderGelListRow = [
    BuilderGel(imgPath: "assets/fluid/Group 105.png", icon: "assets/gel_builder_icons/01.png", id: "MOCHA", shape: "assets/gel_builder_shape/01.png"),
    BuilderGel(
        imgPath: "assets/fluid/Group 106.png", icon: "assets/gel_builder_icons/03.png", id: "MILKEY", shape: "assets/gel_builder_shape/03.png"),
    BuilderGel(imgPath: "assets/fluid/Group 107.png", icon: "assets/gel_builder_icons/04.png", id: "CLEAR", shape: "assets/gel_builder_shape/04.png"),
    BuilderGel(
        imgPath: "assets/fluid/Group 108.png", icon: "assets/gel_builder_icons/06.png", id: "HOT PINK", shape: "assets/gel_builder_shape/06.png"),
    BuilderGel(imgPath: "assets/fluid/Group 109.png", icon: "assets/gel_builder_icons/07.png", id: "TAFFY", shape: "assets/gel_builder_shape/07.png"),
  ];
  final isTablet = TabletDetector.isTablet(MediaQueryData.fromView(WidgetsBinding.instance.window));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          playVideo: true,
        ),
        body: isTablet
            ? BuilderGelTablet(isTablet: isTablet, builderGelListRow: builderGelListRow)
            : BuilderGelPhone(isTablet: isTablet, builderGelListRow: builderGelListRow));
  }
}

class BuilderGelTablet extends StatelessWidget {
  const BuilderGelTablet({
    super.key,
    required this.isTablet,
    required this.builderGelListRow,
  });

  final bool isTablet;
  final List<BuilderGel> builderGelListRow;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const ButtonPlayVideo(pla),
            Container(
              // width: 1511.w,
              // decoration: const BoxDecoration(color: Color.fromRGBO(240, 240, 240, 1)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          isTablet
                              ? ListGel(builderGelListRow: builderGelListRow.take(3).toList())
                              : ListGel(builderGelListRow: builderGelListRow.take(3).toList()),
                          isTablet
                              ? ListGel(builderGelListRow: builderGelListRow.sublist(3))
                              : ListGel(builderGelListRow: builderGelListRow.sublist(3, 5)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        const CustomBottomBar(
          categoryName: 'Fluid GEL',
          heroTag: 'gelFluid',
          imagePath: "assets/categories/gelFluid.png",
        ),
      ],
    );
  }
}

class BuilderGelPhone extends StatelessWidget {
  const BuilderGelPhone({
    super.key,
    required this.isTablet,
    required this.builderGelListRow,
  });

  final bool isTablet;
  final List<BuilderGel> builderGelListRow;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.10,
            ),
            SizedBox(
              width: 1511.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      "assets/Isolation_Mode.png",
                      width: isTablet ? 220.w : 440.w,
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          isTablet
                              ? ListGel(builderGelListRow: builderGelListRow.take(3).toList())
                              : ListGel(builderGelListRow: builderGelListRow.take(3).toList()),
                          isTablet
                              ? ListGel(builderGelListRow: builderGelListRow.sublist(3))
                              : ListGel(builderGelListRow: builderGelListRow.sublist(3, 5)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        const CustomBottomBar(
          categoryName: 'Fluid GEL',
          heroTag: 'gelFluid',
          imagePath: "assets/categories/gelFluid.png",
        ),
      ],
    );
  }
}

class ListGel extends StatelessWidget {
  ListGel({
    super.key,
    required this.builderGelListRow,
  });

  final List<BuilderGel> builderGelListRow;
  final isTablet = TabletDetector.isTablet(MediaQueryData.fromView(WidgetsBinding.instance.window));

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: builderGelListRow
          .map((e) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(
                          FluidGelDetails(
                            gel: e,
                            gels: builderGelListRow,
                          ),
                          duration: const Duration(milliseconds: 800));
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Center(
                          child: Hero(
                            tag: 'Gel${e.id}',
                            child: Image.asset(
                              e.imgPath,
                              width: isTablet ? 220.w : 440.w,
                            ),
                          ),
                        ),
                        // Hero(
                        //   tag: 'Cover${e.id}',
                        //   child: Image.asset(
                        //     "assets/gel_builder/Coverr4.png",
                        //     width: isTablet ? 220.w : 500.w,
                        //     // fit: BoxFit.cover,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  // Hero(
                  //   tag: 'Icon${e.id}',
                  //   child: Image.asset(
                  //     e.icon,
                  //     width: isTablet ? 57.w : 115.w,
                  //   ),
                  // ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    e.id,
                    style: TextStyle(
                      fontSize: isTablet ? 20.sp : 60.sp,
                      fontFamily: "Gotham",
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(20, 76, 80, 1),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                ],
              ))
          .toList(),
    );
  }
}
