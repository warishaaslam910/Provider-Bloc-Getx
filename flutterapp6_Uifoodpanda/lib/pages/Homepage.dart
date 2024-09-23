import 'package:flutter/material.dart';
import 'package:flutterapp_7/widgets/Categories.dart';
import 'package:flutterapp_7/widgets/Homeappbar.dart';
import 'package:flutterapp_7/widgets/Offertab.dart';
import 'package:flutterapp_7/widgets/Order.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Homeappbar(),
        Offertab(),
        Order(),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'Free delivery',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Categories()
      ],
    ));
  }
}
