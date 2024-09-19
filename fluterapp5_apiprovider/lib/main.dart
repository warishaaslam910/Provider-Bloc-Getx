import 'package:firebase_core/firebase_core.dart';
import 'package:fluterapp5_apiprovider/Providerclass/todo_provider.dart';
import 'package:fluterapp5_apiprovider/Realtimecrud.dart';
import 'package:fluterapp5_apiprovider/Ui.dart';
import 'package:fluterapp5_apiprovider/auth/Login.dart';
import 'package:fluterapp5_apiprovider/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => todo_provider(),
      child: MaterialApp(
        home: Scaffold(body: Ui()),
      ),
    );
  }
}
