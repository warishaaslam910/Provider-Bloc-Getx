// import 'dart:convert';

// import 'package:fluterapp5_apiprovider/model.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class Services {
//   Future<List<model>> getallapi() async {
//     const url = 'https://reqres.in/api/users?page=2';
//     final uri = Uri.parse(url);
//     final resp = await http.get(uri);
//     if (resp.statusCode == 200) {
//       final json = jsonDecode(resp.body);
//       final data = json['data'] as List;
//       final todos = data.map((e) {
//         return model(username: e['first_name'], userimg: e['avatar']);
//       }).toList();
//       return todos;
//     } else {
//       throw 'Error to gt api';
//     }
//   }
// }

import 'dart:convert';

import 'package:fluterapp5_apiprovider/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Services {
  Future<List<model>> getallapi() async {
    const url = 'https://www.healthcare.gov/api/index.json';
    final uri = Uri.parse(url);
    final resp = await http.get(uri);
    if (resp.statusCode == 200) {
      final json = jsonDecode(resp.body)
          as List<dynamic>; // Cast to List<dynamic> to ensure proper decoding

      final todos = json.map((e) {
        return model(
            titles: e['title']); // Access 'title' from each item in the list
      }).toList();

      return todos;
    } else {
      throw 'Error to gt api';
    }
  }
}
