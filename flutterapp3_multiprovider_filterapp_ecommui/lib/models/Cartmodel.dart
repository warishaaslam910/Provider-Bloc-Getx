class Cartmodel {
  Cartmodel({
    required this.paymentamount,
    required this.userid,
    required this.cartitem,
    required this.timestamp,
  });
  late final int paymentamount;
  late final String userid;
  late final int cartitem;
  late final String timestamp;

  Cartmodel.fromJson(Map<String, dynamic> json) {
    paymentamount = json['paymentamount'];
    userid = json['userid'];
    cartitem = json['cartitem'];
    timestamp = json['timestamp'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['paymentamount'] = paymentamount;
    data['userid'] = userid;
    data['cartitem'] = cartitem;
    data['timestamp'] = timestamp;
    return data;
  }
}
