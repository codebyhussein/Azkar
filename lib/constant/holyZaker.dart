import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../cubit/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MostAzkar extends StatelessWidget {
  String? zekr;
  String? description;
  String? category;
  

  MostAzkar(
      {super.key,
      
      required this.zekr,
      @required this.description,
      @required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.only(left: 8, right: 8),
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
                textDirection: TextDirection.rtl,
                category!,
                style:const  TextStyle(
                    color: Color.fromARGB(255, 23, 24, 24),
                    fontSize: 16.0)),
            SizedBox(
              height: 10.0.h,
            ),
            Text(
              textAlign: TextAlign.center,
              textDirection: TextDirection.rtl,
              zekr!,
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
                description!,
                style:
                TextStyle(
                    fontFamily: 'Tajawal',color: Colors.blue[600], fontSize: 16.0),
              ),
            SizedBox(
              height: 8.0.h,
            ),

          ]),
        ),
      ),
    );
  }
}
