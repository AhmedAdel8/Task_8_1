import 'package:flutter/material.dart';
import 'package:last_8/Features/category/data/models/category_model.dart';

class RowTextDetails extends StatelessWidget {
  const RowTextDetails({super.key, required this.model});

  final CategoryModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Price: \$${model.price}',
          style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          model.category,
          style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
