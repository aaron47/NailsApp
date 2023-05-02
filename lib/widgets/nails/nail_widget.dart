import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Nail.dart';
import 'nail_details.dart';

class NailWidget extends StatelessWidget {
  const NailWidget({super.key, required this.nail});

  final Nail nail;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Get.to(NailDetails(nail: nail));
          },
          child: Image.asset(nail.imgPath),
        ),
        const SizedBox(height: 10),
        Text(
          nail.id,
          style: const TextStyle(
            fontSize: 20,
            fontFamily: "Gotham",
            color: Color.fromRGBO(106, 104, 104, 1),
          ),
        ),
      ],
    );
  }
}
