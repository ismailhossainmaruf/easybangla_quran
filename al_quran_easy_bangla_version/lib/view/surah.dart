import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ReadSuarh extends StatefulWidget {
  const ReadSuarh({Key? key}) : super(key: key);

  @override
  State<ReadSuarh> createState() => _ReadSuarhState();
}

class _ReadSuarhState extends State<ReadSuarh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        centerTitle: true,
        elevation: 0.0,
        brightness: Brightness.dark,
        title: Text(
          "Para -no",
          style: GoogleFonts.notoSans(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.1,
              color: Colors.white),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: InkWell(
            onTap: () {
              Get.back();
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                Text(
                  "Back",
                  style: GoogleFonts.notoSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.1,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(child: Text("Surah ")),
    );
  }
}
