import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_quran/cubit/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class counter extends StatefulWidget {
  counter({super.key, required this.NameofjsonFile});
  String? NameofjsonFile;

  @override
  State<counter> createState() => _counterState();
}

class _counterState extends State<counter> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(
            child: Text(
              'العداد',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
      backgroundColor: Colors.white,
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(children: [
            FutureBuilder(
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List result = json.decode(snapshot.data!);

                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                    height: 500.h,
                                    width: 300.w,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                          child: Image.asset(
                                        'images/logo.png',
                                        height: 250.h,
                                        width: 250.w,
                                        fit: BoxFit.cover,
                                      )),
                                    )),
                                SizedBox(
                                  width: 15.w,
                                ),
                                Container(
                                    height: 500.h,
                                    width: 300.w,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                          child: Image.asset(
                                        'images/image2.png',
                                        height: 250.h,
                                        width: 250.w,
                                        fit: BoxFit.cover,
                                      )),
                                    )),
                                SizedBox(
                                  width: 15.w,
                                ),
                                Container(
                                    height: 500.h,
                                    width: 300.w,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                          child: Image.asset(
                                        'images/image3.png',
                                        height: 250.h,
                                        width: 250.w,
                                        fit: BoxFit.cover,
                                      )),
                                    )),
                                SizedBox(
                                  width: 15.w,
                                ),
                                Container(
                                    height: 500.h,
                                    width: 300.w,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Center(
                                          child: Image.asset(
                                        'images/image4.png',
                                        height: 250.h,
                                        width: 250.w,
                                        fit: BoxFit.cover,
                                      )),
                                    )),
                              ],
                            ),
                          ),

                          Container(
                            child: MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    count++;
                                  });
                                },
                                child: Text('$count')),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }
                if (snapshot.hasError) {
                  return Center(child: Text('error'));
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
              future: DefaultAssetBundle.of(context)
                  .loadString("assets/${widget.NameofjsonFile}.json"),
            )
          ])),
    );
  }
}
