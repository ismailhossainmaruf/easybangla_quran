import 'package:al_quran_easy_bangla_version/view/surah.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ParaLists extends StatefulWidget {
  const ParaLists({Key? key}) : super(key: key);

  @override
  State<ParaLists> createState() => _ParaListsState();
}

class _ParaListsState extends State<ParaLists> {
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
          "The Holy Quran Bangla",
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
              Get.to(ReadSuarh());
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Para 0 : Surah 1-2",
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
