import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlaschNailScreen extends StatelessWidget {
  const FlaschNailScreen({super.key});

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
        ),
      ),
      body: Container(
        child: const Padding(
          padding: EdgeInsets.all(30),
          child: Text(
            "Nails Polish",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "Gotham",
              color: Color.fromRGBO(11, 43, 45, 1),
            ),
          ),
        ),
      ),
    );
  }
}
