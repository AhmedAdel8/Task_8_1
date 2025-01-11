import 'package:flutter/material.dart';

AppBar customAppBar({required String text}) {
  return AppBar(
    centerTitle: true,
    title: Text(text),
  );
}
