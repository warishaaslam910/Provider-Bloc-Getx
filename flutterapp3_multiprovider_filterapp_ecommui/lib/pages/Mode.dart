import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterapp3_multiprovider_filterapp_ecommui/Api.dart';

class Mode extends StatefulWidget {
  const Mode({super.key});

  @override
  State<Mode> createState() => _ModeState();
}

class _ModeState extends State<Mode> {
  late Size mq = MediaQuery.of(context).size;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: Api.firestore.collection('users').snapshots(),
          builder: (context, snapshot) {
            final list = [];
            if (snapshot.hasData) {
              final data = snapshot.data?.docs;
              for (var i in data!) {
                print("data :${jsonEncode(i.data())}");
                list.add(i.data()['displayname']);
              }
            }
            return ListView.builder(
                itemCount: list.length,
                padding: EdgeInsets.only(top: mq.height * .04),
                itemBuilder: (context, index) {
                  return Text('displayname : ${list[index]}');
                });
          }),
    );
  }
}
