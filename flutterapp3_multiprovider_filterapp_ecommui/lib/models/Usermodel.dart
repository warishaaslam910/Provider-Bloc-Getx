class Usermodel {
  Usermodel({
    required this.userimage,
    required this.userId,
    required this.useremail,
    required this.username,
  });
  late final String userimage;
  late final String userId;
  late final String useremail;
  late final String username;

  Usermodel.fromJson(Map<String, dynamic> json) {
    userimage = json['userimage'];
    userId = json['userId'];
    useremail = json['useremail'];
    username = json['username'];
  }
//to covert dat we want to sent to server and change into json object
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['userimage'] = userimage;
    data['userId'] = userId;
    data['useremail'] = useremail;
    data['username'] = username;
    return data;
  }
}
