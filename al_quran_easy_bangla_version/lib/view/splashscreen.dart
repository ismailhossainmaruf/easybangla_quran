import 'dart:async';

import 'package:al_quran_easy_bangla_version/view/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Timer(
        Duration(seconds: 3),
        () => {
              Get.snackbar("Assala-mu-alai-kum", "Welcome Back!"),
              Get.to(() => HomeScreen()),
            });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/al-quran.png",
              height: 180,
              width: 280,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Text(
                "Easy Bangla Al-Quran",
                style: GoogleFonts.notoSans(
                    fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            CircularProgressIndicator(
              color: Colors.red.shade800,
              backgroundColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
