import 'package:dio/dio.dart';
import 'package:last_8/Features/category/data/models/category_model.dart';

class CategoryData {
  final dio = Dio();
  Future<List<CategoryModel>> getDataCategory({
    required String endpoint,
  }) async {
    var response = await dio.get(
      "https://fakestoreapi.com/products/category/$endpoint",
    );
    if (response.statusCode == 200) {
      List jsonBody = response.data;
      List<CategoryModel> data =
          jsonBody.map((e) => CategoryModel.fromJson(e)).toList();
      return data;
    } else {
      throw Exception('Failed to load data');
    }
  }
}
