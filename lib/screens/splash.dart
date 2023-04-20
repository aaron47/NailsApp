import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        toolbarHeight: MediaQuery.of(context).size.height * 0.6,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 40),
              child: Image.asset(
                "assets/essential2.png",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/SplashScreenBackground.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: const Expanded(
          child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                "MADE WITH LOVE BY SLOTH-LAB",
                style: TextStyle(
                  fontSize: 7,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(249, 249, 249, 1),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
