import 'package:essential_beauty/screens/how_to_apply.dart';
import 'package:essential_beauty/widgets/nails/custom_app_bar.dart';
import 'package:essential_beauty/widgets/nails/nail_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'Nail.dart';

class NailDetails extends StatelessWidget {
  const NailDetails({super.key, required this.nail});

  final Nail nail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: Colors.transparent,
        elevation: 0,
        onPressed: () {
          Get.back();
        },
        child: Image.asset(
          "assets/categories/NailsPolishLarge.png",
        ),
      ),
      appBar: const CustomAppBar(),
      body: Center(
        child: Container(
          width: 1511.w,
          decoration:
              const BoxDecoration(color: Color.fromRGBO(240, 240, 240, 1)),
          padding: const EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "NAILS POLISH",
                style: TextStyle(
                  fontSize: 32.sp,
                  fontFamily: "Gotham",
                  fontWeight: FontWeight.w700,
                  color: const Color.fromRGBO(35, 40, 55, 1),
                ),
              ),
              Center(
                heightFactor: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    NailCard(nail: nail),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const PlayButtonLarge(),
                        SizedBox(
                          width: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Ref:${nail.id}",
                                  style: TextStyle(
                                    fontSize: 32.sp,
                                    fontFamily: "Gotham",
                                    fontWeight: FontWeight.w700,
                                    color: const Color.fromRGBO(80, 79, 79, 1),
                                  ),
                                ),
                                Text(
                                  "Soak oof gell polish",
                                  style: TextStyle(
                                    fontFamily: "Gotham",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 32.sp,
                                    color: const Color.fromRGBO(97, 95, 95, 1),
                                  ),
                                ),
                                Text(
                                  "Time of polymerization in light of the UV lamp-2-3minutes LED-lamp-1 minute",
                                  style: TextStyle(
                                    fontFamily: "Gotham",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 24.sp,
                                    color:
                                        const Color.fromRGBO(126, 126, 126, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.2),
                    Image.asset("assets/nails/ManicureBottle.png", width: 275.w)
                  ],
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

class PlayButtonLarge extends StatelessWidget {
  const PlayButtonLarge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 80, bottom: 40),
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
    );
  }
}
