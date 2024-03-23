import 'package:flutter/material.dart';
import 'package:flutterapp3_multiprovider_filterapp_ecommui/auth/Login.dart';
import 'package:flutterapp3_multiprovider_filterapp_ecommui/pages/Splash.dart';

import 'pages/HomePage.dart';
import 'pages/Mode.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Splash(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}