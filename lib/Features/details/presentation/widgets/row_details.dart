import 'package:flutter/material.dart';
import 'package:last_8/Features/category/data/models/category_model.dart';

class RowDetails extends StatelessWidget {
  const RowDetails({super.key, required this.model});
  final CategoryModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "${model.rating.rate}",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 8),
        Text("(${model.rating.count} review)", style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
