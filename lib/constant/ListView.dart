import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../cubit/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class listView extends StatefulWidget {
  String? zekr;
  String? description;
  int count = 5;
  VoidCallback? ontap;

  listView(
      {super.key,
      required this.count,
      required this.zekr,
      @required this.description,
      @required this.ontap});

  @override
  State<listView> createState() => _listViewState();
}

class _listViewState extends State<listView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(children: [
                Text(
                  textAlign: TextAlign.center,
                  textDirection: TextDirection.rtl,
                  widget.zekr!,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0.sp,
                      fontFamily: 'Quran'),
                ),
                SizedBox(
                  height: 6.0.h,
                ),
                Text(
                    textDirection: TextDirection.rtl,
                    widget.description!,
                    style: TextStyle(
                        fontFamily: 'Tajawal',
                        color: Color.fromARGB(255, 23, 24, 24),
                        fontSize: 16.0.sp)),
                SizedBox(
                  height: 10.0.h,
                ),
                Container(
                  width: 200.0.w,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      if (widget.count > 0) {
                        setState(() {
                          widget.count--;
                        });
                      }
                      if (widget.count == 0) {}
                    },
                    child: Text(
                      "${widget.count}",
                      style: TextStyle(fontSize: 30.0.sp, color: Colors.white),
                    ),
                  ),
                )
              ]),
            )));
  }
}
