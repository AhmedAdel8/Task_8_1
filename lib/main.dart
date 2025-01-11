import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:last_8/core/block_observer/block_observer.dart';
import 'package:last_8/my_app.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}
