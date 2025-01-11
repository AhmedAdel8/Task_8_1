import 'package:flutter/material.dart';
import 'package:last_8/Features/category/data/models/category_model.dart';
import 'package:last_8/Features/details/presentation/widgets/row_text_details.dart';
import 'package:last_8/Features/details/presentation/widgets/row_details.dart';
import 'package:last_8/Features/details/presentation/widgets/text_title_details.dart';
import 'package:last_8/core/style/string_app.dart';
import 'package:last_8/core/widgets/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  final CategoryModel model;
  const DetailsScreen({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(text: StringApp.titleappbardetailsScreen),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(model.image, fit: BoxFit.cover, height: 210),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextTitleDetails(model: model),
                  SizedBox(height: 8),
                  Text(
                    model.description,
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  SizedBox(height: 8),
                  RowTextDetails(model: model),
                  SizedBox(height: 8),
                  RowDetails(model: model),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
