class CategoryModel {
  final int id;
  final num price;
  final String title;
  final String category;
  final String description;
  final String image;
  final Rating rating;

  CategoryModel({
    required this.rating,
    required this.id,
    required this.price,
    required this.title,
    required this.category,
    required this.description,
    required this.image,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> data) {
    return CategoryModel(
      id: data["id"],
      price: data["price"],
      title: data["title"],
      category: data["category"],
      description: data["description"],
      image: data["image"],
      rating: Rating.fromJson(data["rating"]),
    );
  }
}

class Rating {
  final num rate;
  final num count;

  Rating({required this.rate, required this.count});

  factory Rating.fromJson(Map<String, dynamic> data) {
    return Rating(rate: data["rate"], count: data["count"]);
  }
}
