import 'dart:io';
import 'package:flutter/material.dart';

import '../../shared/tablet_detector.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final isTablet = TabletDetector.isTablet(MediaQueryData.fromWindow(WidgetsBinding.instance.window));
  CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: false,
      toolbarHeight: isTablet ? 120 : 65,
      title: Container(
        margin: EdgeInsets.only(
          top: Platform.isWindows
              ? MediaQuery.of(context).size.height * 0.04
              : MediaQuery.of(context).size.height * 0.05,
        ),
        child: SizedBox(
          height: 150,
          child: isTablet ? Image.asset(
            "assets/EssentialAppBar.png",
            fit: BoxFit.contain,
            // height: MediaQuery.of(context).size.height * 0.1,
            // width: 95.275,
            height: MediaQuery.of(context).size.height * 0.1,
          ) : Image.asset(
            "assets/EssentialAppBar.png",
            fit: BoxFit.contain,
            // height: MediaQuery.of(context).size.height * 0.1,
            width: 200,
            height: 70,
          ),
        ),
      ),
      flexibleSpace: Image.asset(
        "assets/AppBarBackground.png",
        fit: BoxFit.cover,
        height: isTablet ? double.infinity : 100,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(120);
}
