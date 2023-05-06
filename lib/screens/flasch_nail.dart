import 'package:essential_beauty/widgets/flasch_nail_widgets/FlaschNail.dart';
import 'package:essential_beauty/widgets/nails/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlaschNailScreen extends StatelessWidget {
  FlaschNailScreen({super.key});

  final List<FlaschNail> flaschNailImages = [
    FlaschNail(path: "assets/flasch_nail/113.png", id: "01"),
    FlaschNail(path: "assets/flasch_nail/114.png", id: "02"),
    FlaschNail(path: "assets/flasch_nail/115.png", id: "03"),
    FlaschNail(path: "assets/flasch_nail/116.png", id: "04"),
    FlaschNail(path: "assets/flasch_nail/117.png", id: "05"),
    FlaschNail(path: "assets/flasch_nail/118.png", id: "06"),
    FlaschNail(path: "assets/flasch_nail/119.png", id: "07"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomAppBar(
        child: Align(
          alignment: Alignment.topRight,
          child: Text("FLASCH NAIL"),
        ),
      ),
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
              child: Center(
                child: Text(
                  "Flasch Nail".toUpperCase(),
                  style: const TextStyle(
                    fontFamily: "Gotham",
                    fontWeight: FontWeight.w700,
                    color: Color.fromRGBO(35, 40, 55, 1),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(bottom: 10),
                alignment: Alignment.bottomCenter,
                width: MediaQuery.of(context).size.width -
                    MediaQuery.of(context).size.width / 3.5,
                child: Row(
                  children: [
                    for (var nail in flaschNailImages)
                      Image.asset(
                        nail.path,
                        width: MediaQuery.of(context).size.width / 10,
                      ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/flasch_nail/FlaschNailBg.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width -
                        MediaQuery.of(context).size.width / 3.5,
                    child: Row(
                      children: [
                        for (var nail in flaschNailImages)
                          Column(
                            children: [
                              const SizedBox(height: 10),
                              Text(
                                nail.id,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(137, 137, 137, 1),
                                  fontFamily: "Gotham",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Image.asset(
                                nail.path,
                                width: MediaQuery.of(context).size.width / 10,
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
