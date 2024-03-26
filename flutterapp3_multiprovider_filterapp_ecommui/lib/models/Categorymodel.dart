class Categorymodel {
  Categorymodel({
    required this.categoryname,
  });
  late final String categoryname;

  Categorymodel.fromJson(Map<String, dynamic> json) {
    categoryname = json['categoryname'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['categoryname'] = categoryname;

    return data;
  }
}
