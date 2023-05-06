import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Nail.dart';

class NailCard extends StatelessWidget {
  const NailCard({super.key, required this.nail});
  final Nail nail;

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
            child: Image.asset(
              "assets/nails/large/${nail.id}.png",
              fit: BoxFit.contain,
              height: 478.h,
              width: 216.w,
              // height: 200,
            ),
          ),
        )
      ],
    );
  }
}
