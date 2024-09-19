// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:flutterapp4_providerapi/Providerf/todo1_provider.dart';
// import 'package:flutterapp4_providerapi/Ui.dart';

// import 'package:flutterapp4_providerapi/firebase_options.dart';
// import 'package:provider/provider.dart';

// void main() async {
//   runApp(const MyApp());
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );

// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Ui(),
//       ),
//     );
//   }
// }

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp4_providerapi/Providerf/todo1_provider.dart';
import 'package:flutterapp4_providerapi/Ui.dart';
import 'package:flutterapp4_providerapi/firebase_options.dart';
import 'package:provider/provider.dart';

void main() async {
  // Ensure that Flutter is fully initialized before doing anything else
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Run the app after initialization
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // Provide the todo1_provider to the entire widget tree
      create: (context) => todo1_provider(),
      child: MaterialApp(
        home: Scaffold(
          body: Ui(),
        ),
      ),
    );
  }
}
