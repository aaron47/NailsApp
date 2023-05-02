import 'package:essential_beauty/widgets/nails/nails_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FlaschNailScreen extends StatelessWidget {
  const FlaschNailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: Colors.transparent,
        elevation: 0,
        onPressed: () {
          Get.back();
        },
        child: Image.asset(
          "assets/categories/RubberBaseGel.png",
        ),
      ),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Nails Polish",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Gotham",
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(11, 43, 45, 1),
                ),
              ),
            ),
            NailsRow(),
          ],
        ),
      ),
    );
  }
}
