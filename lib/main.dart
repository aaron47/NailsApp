import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:essential_beauty/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Essential Beauty',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: MediaQuery.of(context).size.height,
      splash: const Splash(),
      nextScreen: const HomeScreen(),
      splashTransition: SplashTransition.fadeTransition,
      duration: 1500,
    );
  }
}
