import 'package:essential_beauty/models/cuticul_oil.dart';
import 'package:essential_beauty/screens/cuticul_oil/cuticul_oil_details.dart';
import 'package:essential_beauty/widgets/custom_bottom_bar.dart';
import 'package:essential_beauty/widgets/nails/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../shared/tablet_detector.dart';
import 'bottle_screen.dart';

class CuticuleOilScreen extends StatelessWidget {
  CuticuleOilScreen({super.key});

  final isTablet = TabletDetector.isTablet(MediaQueryData.fromWindow(WidgetsBinding.instance.window));

  final List<Bottle> bottles = const [
    Bottle("01", imgPath: "assets/cuticul_oil/peche.png", ref: "Peche"),
    Bottle("02", imgPath: "assets/cuticul_oil/manoi.png", ref: "Manoi"),
  ];

  final List<CuticulOil> builderOilList = [
    CuticulOil(
      imgPath: "assets/cuticul_oil/01.png",
      description:
          "ce soin riche aux huiles naturelles régénere à la base de huil de ricin , restructure et hydrate lescuticules fissuré et séchesil assoucit la peau et permet de détacher en douceur les cutils des angles et accélére leur repousse soigne l’épiderme et améliore sa capacitéde tétention de l’humidité",
      id: "01",
    ),
    CuticulOil(
      imgPath: "assets/cuticul_oil/02.png",
      description:
          "ce soin riche aux huiles naturelles régénere à la base de huil de ricin , restructure et hydrate lescuticules fissuré et séchesil assoucit la peau et permet de détacher en douceur les cutils des angles et accélére leur repousse soigne l’épiderme et améliore sa capacitéde tétention de l’humidité",
      id: "02",
    ),
    CuticulOil(
      imgPath: "assets/cuticul_oil/03.png",
      description:
          "ce soin riche aux huiles naturelles régénere à la base de huil de ricin , restructure et hydrate lescuticules fissuré et séchesil assoucit la peau et permet de détacher en douceur les cutils des angles et accélére leur repousse soigne l’épiderme et améliore sa capacitéde tétention de l’humidité",
      id: "03",
    ),
    CuticulOil(
      imgPath: "assets/cuticul_oil/04.png",
      description:
          "ce soin riche aux huiles naturelles régénere à la base de huil de ricin , restructure et hydrate lescuticules fissuré et séchesil assoucit la peau et permet de détacher en douceur les cutils des angles et accélére leur repousse soigne l’épiderme et améliore sa capacitéde tétention de l’humidité",
      id: "04",
    ),
    CuticulOil(
      imgPath: "assets/cuticul_oil/05.png",
      description:
          "ce soin riche aux huiles naturelles régénere à la base de huil de ricin , restructure et hydrate lescuticules fissuré et séchesil assoucit la peau et permet de détacher en douceur les cutils des angles et accélére leur repousse soigne l’épiderme et améliore sa capacitéde tétention de l’humidité",
      id: "05",
    ),
    CuticulOil(
      imgPath: "assets/cuticul_oil/06.png",
      description:
          "ce soin riche aux huiles naturelles régénere à la base de huil de ricin , restructure et hydrate lescuticules fissuré et séchesil assoucit la peau et permet de détacher en douceur les cutils des angles et accélére leur repousse soigne l’épiderme et améliore sa capacitéde tétention de l’humidité",
      id: "06",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(playVideo: true,),
        body: isTablet
            ? CuticuleOilTablet(builderOilList: builderOilList, bottles: bottles)
            : CuticuleOilPhone(builderOilList: builderOilList, bottles: bottles));
  }
}

class CuticuleOilTablet extends StatelessWidget {
  const CuticuleOilTablet({
    super.key,
    required this.builderOilList,
    required this.bottles,
  });

  final List<CuticulOil> builderOilList;
  final List<Bottle> bottles;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            // const ButtonPlayVideo(),
            SizedBox(height: 40,) ,
            Container(
              width: 1511.w,
              decoration: const BoxDecoration(color: Color.fromRGBO(240, 240, 240, 1)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                  Expanded(
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: builderOilList
                                .map((e) => GestureDetector(
                                      onTap: () {
                                        //  Get.to(BuilderGelDetails(gel: e), duration: Duration(milliseconds: 800));
                                      },
                                      child: GestureDetector(
                                        onTap: () {
                                          Get.to(CuticulOilDetails(oil: e, oils: builderOilList), duration: const Duration(milliseconds: 800));
                                        },
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Hero(
                                              tag: 'oil${e.id}',
                                              flightShuttleBuilder: (BuildContext flightContext, Animation<double> animation,
                                                  HeroFlightDirection flightDirection, BuildContext fromHeroContext, BuildContext toHeroContext) {
                                                return RotationTransition(
                                                  turns: Tween(begin: 0.0, end: 0.25).animate(animation),
                                                  // Control the animation to perform half turns
                                                  child: Image.asset(
                                                    e.imgPath,
                                                    // width: 217.w,
                                                  ),
                                                );
                                              },
                                              child: Image.asset(
                                                e.imgPath,
                                                width: 620.w,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 20.h,
                                            ),
                                            Text(
                                              e.id,
                                              style: TextStyle(
                                                fontSize: 30.sp,
                                                fontFamily: "Gotham",
                                                fontWeight: FontWeight.w700,
                                                color: const Color.fromRGBO(20, 76, 80, 1),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ))
                                .toList(),
                          ),
                          Stack(
                            children: [
                              Container(
                                height: 400.h,
                                width: 600.56.w,
                                // color: Colors.white,
                                alignment: Alignment.bottomCenter,
                                child: Image.asset(
                                  "assets/cuticul_oil/oil_background.png",
                                  width: 533.w,
                                ),
                              ),
                              Positioned.fill(
                                child: SizedBox(
                                  width: 500.w,
                                  height: 600.h,
                                  //  color: Colors.amber,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Get.to(
                                                () => BottleScreen(
                                                  bottle: bottles[0],
                                                  bottles: bottles,
                                                ),
                                                duration: const Duration(milliseconds: 800),
                                              );
                                            },
                                            child: Hero(
                                              tag: 'peche',
                                              child: Image.asset(
                                                            "assets/cuticul_oil/peche.png",
                                                width: 153.w,
                                                // height: 393.h,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 5.h, bottom: 15.h),
                                            child: Text(
                                              "Peche",
                                              style: TextStyle(
                                                fontSize: 20.sp,
                                                fontFamily: "Gotham",
                                                fontWeight: FontWeight.w700,
                                                color: const Color.fromRGBO(
                                                  150,
                                                  150,
                                                  150,
                                                  1,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Get.to(
                                                () => BottleScreen(
                                                  bottle: bottles[1],
                                                  bottles: bottles,
                                                ),
                                                duration: const Duration(milliseconds: 800),
                                              );
                                            },
                                            child: Hero(
                                              tag: 'manoi',
                                              child: Image.asset(
                                                "assets/cuticul_oil/manoi.png",
                                                width: 153.w,
                                                // height: 393.h,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 5.h, bottom: 15.h),
                                            child: Text(
                                              "Manoi",
                                              style: TextStyle(
                                                fontSize: 20.sp,
                                                fontFamily: "Gotham",
                                                fontWeight: FontWeight.w700,
                                                color: const Color.fromRGBO(
                                                  150,
                                                  150,
                                                  150,
                                                  1,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
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
          imagePath: "assets/categories/CuticuleOil.png",
          heroTag: "CuticuleOil",
          categoryName: "CUTICULE OIL",
        ),
      ],
    );
  }
}

class CuticuleOilPhone extends StatelessWidget {
  const CuticuleOilPhone({
    super.key,
    required this.builderOilList,
    required this.bottles,
  });

  final List<CuticulOil> builderOilList;
  final List<Bottle> bottles;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.12,
            ),
            SizedBox(
              width: 1511.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: builderOilList
                                .map((e) => GestureDetector(
                                      onTap: () {
                                        //  Get.to(BuilderGelDetails(gel: e), duration: Duration(milliseconds: 800));
                                      },
                                      child: GestureDetector(
                                        onTap: () {
                                          Get.to(CuticulOilDetails(oil: e, oils: builderOilList), duration: const Duration(milliseconds: 800));
                                        },
                                        child: Container(
                                          margin: const EdgeInsets.only(bottom: 20),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Hero(
                                                tag: 'oil${e.id}',
                                                flightShuttleBuilder: (BuildContext flightContext, Animation<double> animation,
                                                    HeroFlightDirection flightDirection, BuildContext fromHeroContext, BuildContext toHeroContext) {
                                                  return RotationTransition(
                                                    turns: Tween(begin: 0.0, end: 0.25).animate(animation),
                                                    // Control the animation to perform half turns
                                                    child: Image.asset(
                                                      e.imgPath,
                                                      // width: 217.w,
                                                    ),
                                                  );
                                                },
                                                child: Image.asset(
                                                  e.imgPath,
                                                  width: 1220.w,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 20.h,
                                              ),
                                              Text(
                                                e.id,
                                                style: TextStyle(
                                                  fontSize: 60.sp,
                                                  fontFamily: "Gotham",
                                                  fontWeight: FontWeight.w700,
                                                  color: const Color.fromRGBO(20, 76, 80, 1),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ))
                                .toList(),
                          ),
                          Stack(
                            children: [
                              Center(
                                child: Container(
                                  height: 320.h,
                                  width: 1000.56.w,
                                  // color: Colors.white,
                                  alignment: Alignment.bottomCenter,
                                  child: Image.asset(
                                    "assets/cuticul_oil/oil_background.png",
                                    width: 833.w,
                                  ),
                                ),
                              ),
                              Center(
                                child: SizedBox(
                                  width: 700.w,
                                  height: 340.h,
                                  // color: Colors.amber,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Get.to(
                                                () => BottleScreen(
                                                  bottle: bottles[0],
                                                  bottles: bottles,
                                                ),
                                                duration: const Duration(milliseconds: 800),
                                              );
                                            },
                                            child: Hero(
                                              tag: 'peche',
                                              child: Image.asset(
                                                "assets/cuticul_oil/peche.png",
                                                width: 253.w,
                                                // height: 393.h,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 5.h, bottom: 15.h),
                                            child: Text(
                                              "Peche",
                                              style: TextStyle(
                                                fontSize: 50.sp,
                                                fontFamily: "Gotham",
                                                fontWeight: FontWeight.w700,
                                                color: const Color.fromRGBO(
                                                  150,
                                                  150,
                                                  150,
                                                  1,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Get.to(
                                                () => BottleScreen(
                                                  bottle: bottles[1],
                                                  bottles: bottles,
                                                ),
                                                duration: const Duration(milliseconds: 800),
                                              );
                                            },
                                            child: Hero(
                                              tag: 'manoi',
                                              child: Image.asset(
                                                "assets/cuticul_oil/manoi.png",
                                                width: 253.w,
                                                // height: 393.h,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 5.h, bottom: 12.h),
                                            child: Text(
                                              "Manoi",
                                              style: TextStyle(
                                                fontSize: 50.sp,
                                                fontFamily: "Gotham",
                                                fontWeight: FontWeight.w700,
                                                color: const Color.fromRGBO(
                                                  150,
                                                  150,
                                                  150,
                                                  1,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
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
          imagePath: "assets/categories/CuticuleOil.png",
          heroTag: "CuticuleOil",
          categoryName: "CUTICULE OIL",
        ),
      ],
    );
  }
}
