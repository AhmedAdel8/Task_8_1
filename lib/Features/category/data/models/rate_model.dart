class Rating {
  final num rate;
  final num count;

  Rating({required this.rate, required this.count});

  factory Rating.fromJson(Map<String, dynamic> data) {
    return Rating(rate: data["rate"], count: data["count"]);
  }
}
