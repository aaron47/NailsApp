import 'package:essential_beauty/widgets/nails/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlaschNailScreen extends StatelessWidget {
  FlaschNailScreen({super.key});

  final List<String> flaschNailImages = [
    "assets/flasch_nail/113.png",
    "assets/flasch_nail/114.png",
    "assets/flasch_nail/115.png",
    "assets/flasch_nail/116.png",
    "assets/flasch_nail/117.png",
    "assets/flasch_nail/118.png",
    "assets/flasch_nail/119.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: Colors.transparent,
        elevation: 0,
        onPressed: () {
          Get.back();
        },
        child: Image.asset(
          "assets/categories/FlaschNail.png",
        ),
      ),
      appBar: const CustomAppBar(),
      body: Center(
        child: Column(
          children: [
            const Text(
              "Flasch Nail",
              style: TextStyle(
                fontFamily: "Gotham",
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(35, 40, 55, 1),
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width -
                        MediaQuery.of(context).size.width / 8,
                    child: Row(
                      children: [
                        for (var nail in flaschNailImages)
                          Image.asset(
                            nail,
                            width: MediaQuery.of(context).size.width / 8,
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage("assets/flasch_nail/FlaschNailBg.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width -
                            MediaQuery.of(context).size.width / 8,
                        child: Row(
                          children: [
                            for (var nail in flaschNailImages)
                              Image.asset(
                                nail,
                                width: MediaQuery.of(context).size.width / 8,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
