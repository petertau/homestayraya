import 'dart:async';

import 'package:flutter/material.dart';
import 'mainscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (content) => const MainScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/hutomo-abrianto-X5BWooeO4Cw-unsplash.jpg'),
                    fit: BoxFit.cover))),
        Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  "Homestay Raya",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                ),
                CircularProgressIndicator(),
                Text(
                  "Version 0.1",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                )
              ],
            ))
      ],
    );
  }
}
