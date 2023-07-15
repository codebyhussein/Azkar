// ignore_for_file: prefer_const_constructors

import 'dart:convert';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../constant/reuseable.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int count = 0;
  ChangeCounter(int count, BuildContext context) {
    if (count > 0) {
      count--;
      emit(CounterDecrese());
    }
    if (count == 0) {
      //  Navigator.pop(context);
      emit(DeleteCountainerState());
    }
  }
}
