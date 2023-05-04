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
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.only(top: 10, bottom: 20),
                width: MediaQuery.of(context).size.width * 0.6,
                height: 69,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(75),
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(75),
                  ),
                  image: DecorationImage(
                    image: AssetImage("assets/AppBarBackground.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "How to apply",
                        style: TextStyle(
                          fontFamily: "Gotham",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Image.asset("assets/PlayButton.png"),
                    ],
                  ),
                ),
              ),
            ),
            const Center(
              child: Text(
                "Nails Polish",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: "Gotham",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
