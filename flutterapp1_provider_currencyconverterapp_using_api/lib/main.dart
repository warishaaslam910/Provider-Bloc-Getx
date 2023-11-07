import 'package:flutter/material.dart';
import 'package:flutterapp1_provider_currencyconverterapp_using_api/Providers/Provider_class.dart';
import 'package:flutterapp1_provider_currencyconverterapp_using_api/Providerscr.dart';
import 'package:provider/provider.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({super.key});
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => Provider_class(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: Providerscr(),
          ),
        ));
  }
}
