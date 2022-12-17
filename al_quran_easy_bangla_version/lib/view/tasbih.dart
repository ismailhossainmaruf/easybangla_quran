import 'package:al_quran_easy_bangla_version/controller/tasbih_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Tasbih extends GetView<TasbihController> {
  const Tasbih({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TasbihController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.red.shade900,
        centerTitle: true,
        brightness: Brightness.dark,
        elevation: 0.0,
        title: Text("Tasbih Count",
            style: GoogleFonts.notoSans(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.1,
              color: Colors.white,
            )),
      ),
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Image.asset(
              "assets/images/banglaquran1.jpg",
              width: MediaQuery.of(context).size.width / 0.35,
              height: MediaQuery.of(context).size.height * 0.35,
              fit: BoxFit.cover,
            ),
            Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12.0, top: 16.0),
                  child: Row(
                    children: [
                      Text("Tasbih Type",
                          style: GoogleFonts.notoSans(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.1,
                            color: Colors.red.shade900,
                          )),
                    ],
                  ),
                )),
            Flexible(
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(
                      () => Text('${controller.value}',
                          style: GoogleFonts.notoSans(
                            fontSize: 60,
                            fontWeight: FontWeight.w700,
                            color: Colors.red.shade900,
                          )),
                    )
                  ],
                )),
            Flexible(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          controller.reset();
                        },
                        color: Colors.red.shade900,
                        minWidth: 160,
                        height: 45,
                        child: Text("Reset",
                            style: GoogleFonts.notoSans(
                              color: Colors.white,
                            )),
                      ),
                      MaterialButton(
                        onPressed: () {
                          controller.add();
                        },
                        color: Colors.red.shade900,
                        minWidth: 160,
                        height: 45,
                        child: Text("Tasbih",
                            style: GoogleFonts.notoSans(
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                ))
          ],
        ),
      )),
    );
  }
}
