import 'package:essential_beauty/screens/how_to_apply.dart';
import 'package:essential_beauty/screens/rubber_base_gel/rubber_base_gel_details.dart';
import 'package:essential_beauty/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../shared/tablet_detector.dart';
import '../../widgets/nails/Nail.dart';
import '../../widgets/nails/custom_app_bar.dart';

class RubberBaseGelScreen extends StatelessWidget {
  const RubberBaseGelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TabletDetector.isTablet(MediaQueryData.fromWindow(WidgetsBinding.instance.window))
        ? const RubberBaseGelTablet()
        : const RubberBaseGelPhone();
  }
}

class RubberBaseGelTablet extends StatelessWidget {
  const RubberBaseGelTablet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(playVideo: true,),
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    // width: 1400.w,
                    decoration: const BoxDecoration(color: Color.fromRGBO(240, 240, 240, 1)),
                    padding: const EdgeInsets.all(100),
                    child: Column(
                      children: [
                        
                        _RubberBaseGelRow()
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.08,
              ),
            ],
          ),
          const CustomBottomBar(
            categoryName: 'RUBBER BASE GEL',
            heroTag: 'RubberBaseGel',
            imagePath: "assets/categories/RubberBaseGel.png",
          ),
        ],
      ),
    );
  }
}

class ButtonPlayVideo extends StatelessWidget {
  const ButtonPlayVideo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.08,
      child: Align(
        alignment: Alignment.topLeft,
        child: Container(
          margin: const EdgeInsets.only(top: 80),
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
              image: AssetImage("assets/backgroundAppBarV2.png"),
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
        ),
      ),
    );
  }
}

class RubberBaseGelPhone extends StatelessWidget {
  const RubberBaseGelPhone({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(playVideo: true,),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                _RubberBaseGelRow(),
                const SizedBox(height: 50),
              ],
            ),
          ),
          const CustomBottomBar(
            categoryName: 'RUBBER BASE GEL',
            heroTag: 'RubberBaseGel',
            imagePath: "assets/categories/RubberBaseGel.png",
          ),
        ],
      ),
    );
  }
}

class _RubberBaseGelRow extends StatefulWidget {
  @override
  State<_RubberBaseGelRow> createState() => _RubberBaseGelRowState();
}

class _RubberBaseGelRowState extends State<_RubberBaseGelRow> {
  List<Nail> nails = [];
  final isTablet = TabletDetector.isTablet(MediaQueryData.fromWindow(WidgetsBinding.instance.window));

  void generateNails() {
    for (int i = 1; i < 21; i++) {
      String id = i.toString().padLeft(2, '0');
      String imgPath = "assets/nails/rubber_base_gel/$id.png";
      Nail nail = Nail(
        imgPath: imgPath,
        id: id,
        description: 'Time of polymerization in light of the UV lamp-2-3minutes LED-lamp-1 minute',
      );
      nails.add(nail);
    }
  }

  late List<List<Nail>> rowsOfNails;
  late List<List<Nail>> rowsOfNailsPhone;

  @override
  void initState() {
    super.initState();
    generateNails();
    rowsOfNails = List.generate(
      (nails.length / 10).ceil(),
      (index) => nails.sublist(index * 10, (index + 1) * 10 > nails.length ? nails.length : (index + 1) * 10),
    );
    rowsOfNailsPhone = List.generate(
      (nails.length / 5).ceil(),
      (index) => nails.sublist(index * 5, (index + 1) * 5 > nails.length ? nails.length : (index + 1) * 5),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: isTablet ? const EdgeInsets.symmetric(horizontal: 20) : null,
      child: isTablet
          ? Column(
              children: [
                for (var row in rowsOfNails)
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (var nail in row)
                          _RubberBaseGelNailWidget(
                            nail: nail,
                            nails: nails,
                          ),
                      ],
                    ),
                  ),
              ],
            )
          : Column(
              children: [
                for (var row in rowsOfNailsPhone)
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 1),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (var nail in row)
                          _RubberBaseGelNailWidget(
                            nail: nail,
                            nails: nails,
                          ),
                      ],
                    ),
                  ),

                  SizedBox(height: 30,)
              ],
            ),
    );
  }
}

class _RubberBaseGelNailWidget extends StatelessWidget {
  final Nail nail;
  final List<Nail> nails;
  final isTablet = TabletDetector.isTablet(MediaQueryData.fromWindow(WidgetsBinding.instance.window));

  _RubberBaseGelNailWidget({required this.nail, required this.nails});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Get.to(
                RubberBaseGelDetails(
                  nail: nail,
                  nails: nails,
                ),
                duration: const Duration(milliseconds: 800));
          },
          child: isTablet
              ? Hero(
                  tag: "RubberBaseGel${nail.id}",
                  child: Image.asset(
                    nail.imgPath!,
                    // "assets/nails/rubber_base_gel/${nail.id}.png",
                    fit: BoxFit.contain,
                    height: TabletDetector.isTablet(
                      MediaQueryData.fromWindow(WidgetsBinding.instance.window),
                    )
                        ? 253.79.h.toDouble()
                        : 157.0,
                    width: TabletDetector.isTablet(
                      MediaQueryData.fromWindow(WidgetsBinding.instance.window),
                    )
                        ? 92.12.w.toDouble()
                        : 46.0,
                  ),
                )
              : Image.asset(
                  nail.imgPath!,
                  fit: BoxFit.contain,
                  height: 300.h,
                  width: 300.w,
                ),
        ),
        // const SizedBox(height: 10),
        Text(
          nail.id,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            fontFamily: "Gotham",
            color: Color.fromRGBO(106, 104, 104, 1),
          ),
        ),
      ],
    );
  }
}
