part of 'category_cubit.dart';

@immutable
sealed class CategoryState {}

final class CategoryInitial extends CategoryState {}

final class CategorySuccess extends CategoryState {
  final List<CategoryModel> model;
  CategorySuccess({required this.model});
}

final class CategoryLoading extends CategoryState {}

final class CategoryFaliure extends CategoryState {
  final String errorMessage;
  CategoryFaliure({required this.errorMessage});
}
