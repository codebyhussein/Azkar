// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_quran/constant/holyZaker.dart';
import 'package:flutter_application_quran/cubit/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant/ListView.dart';
import '../constant/reuseable.dart';

class HolyAzkarScreen extends StatelessWidget {
  HolyAzkarScreen(
      {super.key, required this.NameofjsonFile, required this.NameofTitle});
  String? NameofjsonFile;
  String? NameofTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black26,
          title: Center(
            child: Text(
              NameofTitle!,
              style: TextStyle(
                fontSize: 20.0.sp,
                fontWeight: FontWeight.bold,
                fontFamily: 'Tajawal',
              ),
            ),
          )),
      backgroundColor: Colors.white10,
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context)
            .loadString("assets/$NameofjsonFile.json"),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(child: Text('error happend'));
          } else if (snapshot.hasData) {
            var showdata = json.decode(snapshot.data!);
            return ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return MostAzkar(
                    zekr: showdata[index]['zekr'],
                    
                    description: showdata[index]['description'],
                    category: showdata[index]['category'],
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
                itemCount: showdata.length);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
