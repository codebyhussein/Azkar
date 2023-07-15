part of 'counter_cubit.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterDecrese extends CounterState {}

class DeleteCountainerState extends CounterState {}
