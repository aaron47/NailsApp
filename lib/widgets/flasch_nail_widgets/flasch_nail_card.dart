import 'package:essential_beauty/widgets/flasch_nail_widgets/FlaschNail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FlaschNailCard extends StatelessWidget {
  const FlaschNailCard({super.key, required this.flaschNail});
  final FlaschNail flaschNail;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/nails/Card.png",
          width: 379.13.w,
          height: 630.79.h,
          fit: BoxFit.contain,
        ),
        Positioned.fill(
          child: Align(
            child: Transform.rotate(
              angle: 166.8,
              child: Image.asset(
                "assets/flasch_nail/${flaschNail.imgId}.png",
                fit: BoxFit.contain,
                width: 189.w,
                height: 704.h,
              ),
            ),
          ),
        )
      ],
    );
  }
}
