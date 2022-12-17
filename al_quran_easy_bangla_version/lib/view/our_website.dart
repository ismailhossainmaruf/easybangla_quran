import 'package:al_quran_easy_bangla_version/view/about_us.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class OurWebsite extends StatefulWidget {
  const OurWebsite({Key? key}) : super(key: key);

  @override
  State<OurWebsite> createState() => _OurWebsiteState();
}

class _OurWebsiteState extends State<OurWebsite> {
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
          "Al Quran Academy London",
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
          child: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Image.asset(
            "assets/images/banglaquran1.jpg",
            width: MediaQuery.of(context).size.width / 0.35,
            height: MediaQuery.of(context).size.height * 0.35,
            fit: BoxFit.cover,
          ),
          Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 110,
                  width: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        _launchUrl();
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/images/home.png",
                            color: Colors.red.shade900,
                            height: 60,
                            width: 70,
                          ),
                          Text(
                            "Home",
                            style: GoogleFonts.notoSans(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                VerticalDivider(
                  indent: 15,
                  color: Color.fromARGB(255, 32, 28, 28),
                ),
                Container(
                  height: 110,
                  width: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        _launchUrl();
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/images/getinvolved.png",
                            color: Colors.red.shade900,
                            height: 60,
                            width: 70,
                          ),
                          Text(
                            "Get involved",
                            style: GoogleFonts.notoSans(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
              indent: 8, endIndent: 15, color: Color.fromARGB(255, 32, 28, 28)),
          Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 110,
                  width: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        _launchUrl();
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/images/conversation.png",
                            height: 60,
                            width: 70,
                            color: Colors.red.shade900,
                          ),
                          // Icon(
                          //   Icons.message_outlined,
                          //   size: 70,
                          //   color: Colors.red.shade900,
                          // ),
                          Text(
                            "Projects",
                            style: GoogleFonts.notoSans(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                VerticalDivider(color: Color.fromARGB(255, 32, 28, 28)),
                Container(
                  height: 110,
                  width: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Get.to(AboutUs());
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/images/info.png",
                            height: 60,
                            width: 70,
                            color: Colors.red.shade900,
                          ),
                          Text(
                            "About Us",
                            style: GoogleFonts.notoSans(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
              indent: 8, endIndent: 15, color: Color.fromARGB(255, 32, 28, 28)),
          Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 110,
                  width: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        _launchUrl();
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/images/contactus.png",
                            height: 60,
                            width: 70,
                            color: Colors.red.shade900,
                          ),
                          Text(
                            "Contact Us",
                            style: GoogleFonts.notoSans(
                                fontSize: 12, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      )),
    );
  }

  Future<void> _launchUrl() async {
    final Uri _url = Uri.parse('https://www.google.com/');
    if (!await launchUrl(
      _url,
      mode: LaunchMode.inAppWebView,
    )) {
      throw 'Could not launch $_url';
    }
  }
}
