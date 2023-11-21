import 'dart:io';
import 'package:essential_beauty/screens/how_to_apply.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../shared/tablet_detector.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final isTablet = TabletDetector.isTablet(MediaQueryData.fromWindow(WidgetsBinding.instance.window));
  final bool playVideo; 
  CustomAppBar({
    super.key,  this.playVideo = false,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: false,
      actions: [
        Align(
          alignment: Alignment.topLeft,
          child: Container(
            width: 75,
            height: 79,
            child:playVideo ? GestureDetector(
                onTap: () {
                  Get.to(() => const HowToApplyScreen());
                },
                child: Image.asset("assets/PlayButton.png")) :  GestureDetector(
             onTap: () {
                    Get.back();
                  },
                  child: Padding( padding  : EdgeInsets.all(10),child: Image.asset("assets/CloseButton.png" , ))
          ),
          )  
        )
      ],
      toolbarHeight: isTablet ? 140 : 65,
      title: Container(
        margin: EdgeInsets.only(
            top: Platform.isWindows ? MediaQuery.of(context).size.height * 0.04 : MediaQuery.of(context).size.height * 0.005, bottom: 20),
        child: SizedBox(
          height: 150,
          child: isTablet
              ? Image.asset(
                  "assets/EssentialAppBar.png",
                  fit: BoxFit.contain,
                  // height: MediaQuery.of(context).size.height * 0.1,
                   width: 220,
                  height: 140,
                  // height: MediaQuery.of(context).size.height * 0.1,
                )
              : Image.asset(
                  "assets/EssentialAppBar.png",
                  fit: BoxFit.contain,
                  // height: MediaQuery.of(context).size.height * 0.1,
                  width: 120,
                  height: 40,
                ),
        ),
      ),
      flexibleSpace: Image.asset(
        "assets/backgroundAppBarV2.png",
        fit: BoxFit.cover,
        height: isTablet ? double.infinity : 110,
      ),
    );
  }

  @override
  Size get preferredSize => isTablet ? const Size.fromHeight(120) : const Size.fromHeight(50);
}
