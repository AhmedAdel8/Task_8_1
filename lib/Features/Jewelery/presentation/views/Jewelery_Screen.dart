import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:last_8/Features/category/presentation/manger/category/cubit/category_cubit.dart';
import 'package:last_8/Features/category/presentation/views/widgets/card_category.dart';
import 'package:last_8/Features/category/presentation/views/widgets/spinkit_widget.dart';
import 'package:last_8/core/style/string_app.dart';
import 'package:last_8/core/widgets/custom_app_bar.dart';

class JeweleryScreen extends StatelessWidget {
  const JeweleryScreen({super.key, required this.endpoint});
  final String endpoint;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              CategoryCubit()..getCategoryDataCubit(endPoint: endpoint),
      child: BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {
          if (state is CategorySuccess) {
            return Scaffold(
              appBar: customAppBar(text: StringApp.titlejeweappbar),
              body: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: state.model.length,
                itemBuilder: (context, index) {
                  return CardCategory(categoryModel: state.model[index]);
                },
              ),
            );
          } else if (state is CategoryFaliure) {
            return Text('لا يوجد بيانات');
          } else {
            return SpinkitWidget();
          }
        },
      ),
    );
  }
}
