import 'dart:convert';

import 'package:flutterapp4_providerapi/model/model1.dart';
import 'package:http/http.dart' as http;

class Services1 {
  Future<List<model1>> getallapi() async {
    const url = 'https://reqres.in/api/users?page=2';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      // final json = jsonDecode(response.body) as List;
      // final todos = json.map((e) {
      //   return model1(apiid: e['first_name'], imgurl: e['avatar']);
      // }).toList();
      final json = jsonDecode(response.body);
      final data = json['data'] as List;
      final todos = data.map((e) {
        return model1(
          apiid: e['id'].toString(), // or use e['first_name'] if you prefer
          imgurl: e['avatar'],
        );
      }).toList();
      return todos;
    } else {
      throw 'ERROR TO GET API';
    }
  }
}
