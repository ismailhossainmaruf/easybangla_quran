import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        centerTitle: true,
        brightness: Brightness.dark,
        elevation: 0.0,
        title: Text("Settings",
            style: GoogleFonts.notoSans(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.1,
              color: Colors.white,
            )),
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
        child: Container(
          child: Column(
            children: [
              Flexible(
                  flex: 5,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18.0, left: 18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tasbih Settings",
                          style: GoogleFonts.notoSans(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.1,
                              color: Colors.red.shade900),
                        ),
                        Text(
                          "Select tasbih method for the following\ntasbih",
                          style: GoogleFonts.notoSans(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.1,
                              color: Colors.black),
                        ),
                        //Add multiple tasbih option here
                        Text(
                          "//Add multiple tasbih option here",
                          style: GoogleFonts.notoSans(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.1,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  )),
              Divider(
                color: Colors.black54,
                indent: 18,
                endIndent: 18,
                thickness: 1.5,
              ),
              Flexible(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Give a Quran",
                          style: GoogleFonts.notoSans(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.1,
                              color: Colors.red.shade900),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "If you love the app please donate",
                              style: GoogleFonts.notoSans(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.1,
                                  color: Colors.black),
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black),
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
              Divider(
                color: Colors.black54,
                indent: 18,
                endIndent: 18,
                thickness: 1.3,
              ),
              Flexible(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "App Version",
                          style: GoogleFonts.notoSans(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.1,
                              color: Colors.red.shade900),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "1.0",
                              style: GoogleFonts.notoSans(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.1,
                                  color: Colors.black),
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black),
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
