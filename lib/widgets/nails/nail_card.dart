import 'package:flutter/material.dart';

import 'Nail.dart';

class NailCard extends StatelessWidget {
  const NailCard({super.key, required this.nail});
  final Nail nail;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/nails/Card.png"),
        Positioned.fill(
          child: Align(
            child: Image.asset(
              "assets/nails/${nail.id}.png",
              fit: BoxFit.cover,
              height: 200,
            ),
          ),
        )
      ],
    );
  }
}
