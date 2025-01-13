import 'package:flutter/material.dart';
import 'package:last_8/core/style/styles.dart';

AppBar customAppBar({required String text}) {
  return AppBar(
    centerTitle: true,
    title: Text(text, style: Styles.textstyle18),
  );
}
