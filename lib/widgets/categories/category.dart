import 'package:essential_beauty/widgets/custom_ripple_effect.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../shared/tablet_detector.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.imgPath, required this.categoryName, required this.onChangeScreen, required this.tag});

  final String imgPath;
  final String categoryName;
  final String tag;
  final void Function() onChangeScreen;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: TabletDetector.isTablet(MediaQueryData.fromView(WidgetsBinding.instance.window)) ? 300.h : 600.w,
      width: TabletDetector.isTablet(MediaQueryData.fromView(WidgetsBinding.instance.window)) ? 500.w : 600.w,
      // margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: [
          CustomImageRippleEffect(
            onTap: onChangeScreen,
            child: Hero(
              tag: tag,
              flightShuttleBuilder: (BuildContext flightContext, Animation<double> animation, HeroFlightDirection flightDirection,
                  BuildContext fromHeroContext, BuildContext toHeroContext) {
                return Image.asset(
                  imgPath,
                 
                  width: 800.w,
                );
              },
              child: Image.asset(
                imgPath,
                fit: BoxFit.cover,
                  width: 1200.w,
              ),
            ),
          ),
          // const SizedBox(height: 15),
          // Text(
          //   categoryName,
          //   style: TextStyle(
          //     fontSize: TabletDetector.isTablet(MediaQueryData.fromView(WidgetsBinding.instance.window)) ? 32.sp : 60.sp,
          //     fontFamily: "IBMPlexMono",
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
        ],
      ),
    );
  }
}
