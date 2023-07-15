// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter_application_quran/Screens/ScreenData.dart';
import 'package:flutter_application_quran/Screens/counter.dart';
import 'package:flutter_application_quran/Screens/setting.dart';
import 'package:flutter_application_quran/constant/HolyAzkarScreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'package:flutter/material.dart';

import 'package:flutter_application_quran/Data/jsonData.dart';

import 'package:flutter_application_quran/constant/reuseable.dart';

import 'package:iconly/iconly.dart';

import '../constant/holyZaker.dart';
import '../constant/imagesTemplete.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: Drawer(width: 170.0.w, elevation: 1.0, child: nameofdrawer()),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            backgroundColor: Colors.black26,
            title: Center(
              child:   Text(
                "الرئيسية",
                style: TextStyle(
                  fontSize: 20.0.sp,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Tajawal',
                ),
              ),
            )),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              SizedBox(
                height: 300.h,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ImageTemplete(image: 'images/logo.png',),
                      SizedBox(
                        width: 15.w,
                      ),
                      ImageTemplete(image: 'images/image2.png',),
                      SizedBox(
                        width: 15.w,
                      ),
                      ImageTemplete(image: 'images/image3.png',),
                      SizedBox(
                        width: 15.w,
                      ),
                      ImageTemplete(image: 'images/image4.png',),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0.h,
              ),
              Expanded(
                child: GridView(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200.0,
                      childAspectRatio: 2 / 1,
                      crossAxisSpacing: 30.0,
                      mainAxisSpacing: 30.0),
                  physics: ScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  children: <Widget>[
                    GridBuild(
                        color: Colors.grey,
                        title: 'القران الكريم',
                        gridIcon: IconlyBroken.bookmark,
                        materialFuncation: () {}),
                    GridBuild(
                        color: Colors.grey,
                        title: 'أذكار',
                        gridIcon: Icons.alarm,
                        materialFuncation: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HolyAzkarScreen(
                                      NameofTitle: "أذكار",
                                      NameofjsonFile: 'azkarHole',
                                    )),
                          );
                        }),
                    GridBuild(
                        color: Colors.grey,
                        title: 'أذكار الصباح',
                        gridIcon: Icons.brightness_1_outlined,
                        materialFuncation: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScreensData(
                                      NameofTitle: "أذكار الصباح",
                                      NameofjsonFile: 'azkarMorning',
                                    )),
                          );
                        }),
                    GridBuild(
                        color: Colors.grey,
                        title: 'أذكار المساء',
                        gridIcon: Icons.dark_mode_outlined,
                        materialFuncation: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScreensData(
                                      NameofTitle: "أذكار المساء",
                                      NameofjsonFile: 'azkarEvining',
                                    )),
                          );
                        }),
                    GridBuild(
                        color: Colors.grey,
                        title: "أذكار الاستيقاظ من النوم",
                        gridIcon: Icons.brightness_1_sharp,
                        materialFuncation: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScreensData(
                                      NameofTitle:
                                          "أذكار الاستيقاظ من النوم",
                                      NameofjsonFile: 'afterWakeup',
                                    )),
                          );
                        }),
                    GridBuild(
                        color: Colors.grey,
                        title: "أذكار الآذان",
                        gridIcon: Icons.mosque,
                        materialFuncation: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScreensData(
                                      NameofTitle: "أذكار الآذان",
                                      NameofjsonFile: 'azan',
                                    )),
                          );
                        }),
                    GridBuild(
                        color: Colors.grey,
                        title: 'أذكار المنزل',
                        gridIcon: Icons.home,
                        materialFuncation: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScreensData(
                                      NameofTitle: 'أذكار المنزل',
                                      NameofjsonFile: 'Askar',
                                    )),
                          );
                        }),
                    GridBuild(
                        color: Colors.grey,
                        title: 'دعاء لبس الثوب',
                        gridIcon: (IconlyBroken.close_square),
                        materialFuncation: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScreensData(
                                      NameofTitle: 'دعاء لبس الثوب',
                                      NameofjsonFile: 'wearing',
                                    )),
                          );
                        }),
                    GridBuild(
                        color: Colors.grey,
                        title: 'أذكار الوضوء',
                        gridIcon: Icons.handshake,
                        materialFuncation: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScreensData(
                                      NameofTitle: 'أذكار الوضوء',
                                      NameofjsonFile: 'odoa',
                                    )),
                          );
                        }),
                    GridBuild(
                        color: Colors.grey,
                        title: 'أذكار دخول الحمام',
                        gridIcon: Icons.room_service_outlined,
                        materialFuncation: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScreensData(
                                      NameofTitle: 'أذكار دخول الحمام',
                                      NameofjsonFile: 'enterThetoilet',
                                    )),
                          );
                        }),
                    GridBuild(
                        color: Colors.grey,
                        title: 'أذكار خروج من الخلاء',
                        gridIcon: Icons.handshake,
                        materialFuncation: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScreensData(
                                      NameofTitle: 'أذكار دخول الخلاء',
                                      NameofjsonFile: 'outTheToilt',
                                    )),
                          );
                        }),
                    GridBuild(
                        color: Colors.grey,
                        title: "أذكار الاستيقاظ من النوم",
                        gridIcon: Icons.assist_walker,
                        materialFuncation: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScreensData(
                                      NameofTitle:
                                          "أذكار الاستيقاظ من النوم",
                                      NameofjsonFile: 'afterWakeup',
                                    )),
                          );
                        }),
                    GridBuild(
                        color: Colors.grey,
                        title: "الرُّقيةالشرعيةة",
                        gridIcon: IconlyBroken.bookmark,
                        materialFuncation: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ScreensData(
                                      NameofTitle: "الرُّقيةالشرعيةة",
                                      NameofjsonFile: 'rocua',
                                    )),
                          );
                        }),
                    GridBuild(
                        color: Colors.grey,
                        title: 'عداد',
                        gridIcon: Icons.exposure_plus_1_outlined,
                        materialFuncation: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => counter(
                                        NameofjsonFile: 'Askar',
                                      )));
                        }),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
