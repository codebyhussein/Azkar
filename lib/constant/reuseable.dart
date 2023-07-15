// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_quran/Screens/ScreenData.dart';
import 'package:flutter_application_quran/Screens/counter.dart';
import 'package:flutter_application_quran/Screens/setting.dart';
import 'package:flutter_application_quran/constant/reuseable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../cubit/cubit/counter_cubit.dart';
import 'reuseable.dart';
import 'reuseable.dart';

dvider() {
  return   Divider(
    height: 1.h,
    color: Colors.grey,
  );
}

Widget nameofdrawer() {
  return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        return listofname[index];
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      itemCount: listofname.length);
}

Widget GridBuild({
  required String title,
  required Color color,
  required IconData gridIcon,
  required Function materialFuncation,
}) =>
    MaterialButton(
      onPressed: () {
        materialFuncation();
      },
      child: Container(
          //  height: 100.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: color,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 6.0.h,
              ),
              Icon(
                gridIcon,
                color: Colors.white,
                size: 32,
              ),
              SizedBox(
                height: 6.0.h,
              ),
              Center(
                child: Text(
                  title,
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 10.0.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    fontFamily: 'Tajawal',),
                ),
              ),
            ],
          )),
    );

List<Widget> listofname = [
  Builder(builder: (context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ScreensData(
                      NameofTitle: "أذكار الصباح",
                      NameofjsonFile: 'azkarMorning',
                    )));
      },
      child:   Text(
        'اذكار الصباح',
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontSize: 18.0.sp,
          fontWeight: FontWeight.bold,
          fontFamily: 'Tajawal',
        ),
      ),
    );
  }),
  Builder(builder: (context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ScreensData(
                      NameofTitle: 'أذكار المساء',
                      NameofjsonFile: 'azkarEvining',
                    )));
      },
      child:   Text(
        'أذكار المساء',
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontSize: 18.0.sp,
          fontWeight: FontWeight.bold,
          fontFamily: 'Tajawal',
        ),
      ),
    );
  }),
  Builder(builder: (context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => counter(
                      NameofjsonFile: 'Askar',
                    )));
      },
      child:   Text(
        'العداد',
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontSize: 18.0.sp,
          fontWeight: FontWeight.bold,
          fontFamily: 'Tajawal',
        ),
      ),
    );
  }),
  Builder(builder: (context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Setting()));
      },
      child:   Text(
        'الاعدادات',
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontSize: 20.0.sp,
          fontWeight: FontWeight.bold,
          fontFamily: 'Tajawal',
        ),
      ),
    );
  }),
];
