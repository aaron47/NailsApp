import 'package:essential_beauty/shared/tablet_detector.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
   Splash({super.key});
  final isTablet = TabletDetector.isTablet(MediaQueryData.fromWindow(WidgetsBinding.instance.window));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration:  BoxDecoration(
          image: DecorationImage(
            image: isTablet ? AssetImage("assets/splashlargeV2.png") :  AssetImage("assets/splashv2.png"),
            fit: BoxFit.cover,
          ),
        ),
        
      ),
    );
  }
}
