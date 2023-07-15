// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:flutter_application_quran/Screens/homePage.dart';
import 'package:flutter_application_quran/cubit/cubit/counter_cubit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Data/jsonData.dart';

import 'constant/reuseable.dart';

void main() {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {return  MaterialApp(
          home: homePage(),
          debugShowCheckedModeBanner: false,
        );  },),
    );
  }
}
