class Productmodel {
  Productmodel({
    required this.quantity,
    required this.productid,
    required this.price,
    required this.productname,
    required this.category,
  });
  late final int quantity;
  late final String productid;
  late final int price;
  late final String productname;
  late final String category;

  Productmodel.fromJson(Map<String, dynamic> json) {
    quantity = json['quantity'];
    productid = json['productid'];
    price = json['price'];
    productname = json['productname'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['quantity'] = quantity;
    data['productid'] = productid;
    data['price'] = price;
    data['productname'] = productname;
    data['category'] = category;
    return data;
  }
}
