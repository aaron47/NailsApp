import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: false,
      actions: [
        Container(
          margin: EdgeInsets.only(
            right: MediaQuery.of(context).size.height * 0.04,
          ),
          child: Image.asset("assets/PlayButton.png"),
        ),
      ],
      title: Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.08,
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
