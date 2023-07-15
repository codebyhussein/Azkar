import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class ImageTemplete extends StatelessWidget {
    ImageTemplete({Key? key,required this.image}) : super(key: key);
String image;
  @override
  Widget build(BuildContext context) {
    return    Container(
        height: 500.h,
        width: 300.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
              child: Image.asset(
                image,
                height: 250.h,
                width: 250.w,
                fit: BoxFit.cover,
              )),
        ));
  }
}
