import 'package:al_quran_easy_bangla_version/view/articls_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Articles extends StatefulWidget {
  const Articles({Key? key}) : super(key: key);

  @override
  State<Articles> createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
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
          "Article",
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
      body: SafeArea(
          child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          InkWell(
            onTap: () {
              Get.to(ArticlesData());
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Articles data here",
                    style: GoogleFonts.notoSans(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.1,
                        color: Colors.black87),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ),
          // exchange this widget with separated builder
          Divider(
            color: Colors.black,
          ),
        ],
      )),
    );
  }
}
