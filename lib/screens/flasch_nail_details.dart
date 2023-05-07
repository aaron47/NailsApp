import 'package:essential_beauty/widgets/flasch_nail_widgets/FlaschNail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widgets/flasch_nail_widgets/flasch_nail_card.dart';
import '../widgets/nails/Nail.dart';
import '../widgets/nails/custom_app_bar.dart';
import '../widgets/nails/nail_card.dart';
import '../widgets/nails/nail_details.dart';

class FlaschNailDetails extends StatelessWidget {
  const FlaschNailDetails({super.key, required this.flaschNail});

  final FlaschNail flaschNail;

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
          "assets/categories/FlaschNailLarge.png",
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
                "FLASCH NAIL",
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
                    FlaschNailCard(
                      flaschNail: flaschNail,
                    ),
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
                                  "Ref:${flaschNail.id}",
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
