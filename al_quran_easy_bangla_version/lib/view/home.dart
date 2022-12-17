import 'package:al_quran_easy_bangla_version/view/about_us.dart';
import 'package:al_quran_easy_bangla_version/view/article.dart';
import 'package:al_quran_easy_bangla_version/view/give_a_quran.dart';
import 'package:al_quran_easy_bangla_version/view/our_website.dart';
import 'package:al_quran_easy_bangla_version/view/para_list.dart';
import 'package:al_quran_easy_bangla_version/view/setting.dart';
import 'package:al_quran_easy_bangla_version/view/tasbih.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //String url = "https://wwww.google.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        centerTitle: true,
        brightness: Brightness.dark,
        elevation: 0.0,
        title: Text("Easy Bangla Quran",
            style: GoogleFonts.notoSans(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.1,
              color: Colors.white,
            )),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(Settings());
            },
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ],
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
                        Get.to(ParaLists());
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/images/al-quran.png",
                            height: 60,
                            width: 70,
                            color: Colors.red.shade900,
                          ),
                          Text(
                            "Al-Quran",
                            style: GoogleFonts.notoSans(
                                fontSize: 12, fontWeight: FontWeight.w500),
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
                        Get.to(Articles());
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/images/wingspen.png",
                            color: Colors.red.shade900,
                            height: 60,
                            width: 70,
                          ),
                          Text(
                            "Article",
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
                        Get.to(Tasbih());
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/images/tasbih.png",
                            height: 60,
                            width: 70,
                            color: Colors.red.shade900,
                          ),
                          Text(
                            "Tasbih",
                            style: GoogleFonts.notoSans(
                                fontSize: 12, fontWeight: FontWeight.w500),
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
                        _launchUrl();
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/images/givequran.png",
                            height: 60,
                            width: 70,
                          ),
                          Text(
                            "Give a Quran",
                            style: GoogleFonts.notoSans(
                                fontSize: 12, fontWeight: FontWeight.w500),
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
                        Get.to(OurWebsite());
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/images/website.png",
                            height: 60,
                            width: 70,
                            color: Colors.red.shade900,
                          ),
                          Text(
                            "Our Website",
                            style: GoogleFonts.notoSans(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                VerticalDivider(
                    endIndent: 15, color: Color.fromARGB(255, 32, 28, 28)),
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
                                fontSize: 12, fontWeight: FontWeight.w500),
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
