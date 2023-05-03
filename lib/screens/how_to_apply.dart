import 'package:flutter/material.dart';

class HowToApplyScreen extends StatelessWidget {
  const HowToApplyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          margin: EdgeInsets.only(
            top: MediaQuery.of(context).size.height * 0.06,
          ),
          child: Image.asset(
            "assets/EssentialAppBar.png",
            fit: BoxFit.cover,
            height: 120,
          ),
        ),
        flexibleSpace: Image.asset(
          "assets/AppBarBackground.png",
          fit: BoxFit.cover,
          height: double.infinity,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/BlurryVideoBg.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
