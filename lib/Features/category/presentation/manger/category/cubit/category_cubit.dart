import 'package:bloc/bloc.dart';
import 'package:last_8/Features/category/data/category_data/category_data.dart';
import 'package:last_8/Features/category/data/models/category_model.dart';
import 'package:meta/meta.dart';

part 'category_state.dart';

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(CategoryInitial());

  final CategoryData categoryData = CategoryData();
  void getCategoryDataCubit({required String endPoint}) async {
    emit(CategoryLoading());
    var response = await categoryData.getDataCategory(endpoint: endPoint);
    emit(CategorySuccess(model: response));
  }
}
