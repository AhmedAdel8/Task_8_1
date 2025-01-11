import 'package:flutter/material.dart';
import 'package:last_8/Features/category/data/models/category_model.dart';

class TextTitleDetails extends StatelessWidget {
  const TextTitleDetails({super.key, required this.model});
  final CategoryModel model;

  @override
  Widget build(BuildContext context) {
    return Text(
      model.title,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.deepOrange,
      ),
    );
  }
}
