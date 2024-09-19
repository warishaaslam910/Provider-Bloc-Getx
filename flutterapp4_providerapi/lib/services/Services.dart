// import 'dart:convert';

// import 'package:flutterapp4_providerapi/model/model.dart';
// import 'package:http/http.dart' as http;

// class Services {
//   Future<List<model>> getAll() async {
//     const url = '';
//     final uri = Uri.parse(url);
//     final response = await http.get(uri);
//     if (response.statusCode == 200) {
//       final json = jsonDecode(response.body) as List;
//       final todos = json.map((e) {
//         return model(mal_id: 2, image_url: '');
//       }).toList();
//       return todos;
//     }
//     throw "something went wrong";
//   }
// }
