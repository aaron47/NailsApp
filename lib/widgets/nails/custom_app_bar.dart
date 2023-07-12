import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: false,
      title: Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.03,
        ),
        child: Image.asset(
          "assets/EssentialAppBar.png",
          fit: BoxFit.fill,
          // height: MediaQuery.of(context).size.height * 0.1,
          height: 100,
          // width: 95.275,
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
  Size get preferredSize => const Size.fromHeight(85);
}
