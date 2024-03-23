class Categorymodel {
  Categorymodel({
    required this.categoryname,
    required this.categoryid,
  });
  late final String categoryname;
  late final String categoryid;

  Categorymodel.fromJson(Map<String, dynamic> json) {
    categoryname = json['categoryname'];
    categoryid = json['categoryid'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['categoryname'] = categoryname;
    data['categoryid'] = categoryid;
    return data;
  }
}
