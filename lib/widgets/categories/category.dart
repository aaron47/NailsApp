import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category(
      {super.key,
      required this.imgPath,
      required this.categoryName,
      required this.onChangeScreen});

  final String imgPath;
  final String categoryName;
  final void Function() onChangeScreen;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChangeScreen,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: Column(
          children: [
            Image.asset(
              imgPath,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 15),
            Text(
              categoryName,
              style: const TextStyle(
                fontSize: 10,
                fontFamily: "IBMPlexMono",
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
