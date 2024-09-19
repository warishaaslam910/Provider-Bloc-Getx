// import 'package:flutter/material.dart';
// import 'package:flutterapp4_providerapi/Providerf/todo_provider.dart';
// import 'package:provider/provider.dart';

// class Homepg extends StatefulWidget {
//   const Homepg({super.key});

//   @override
//   State<Homepg> createState() => _HomepgState();
// }

// class _HomepgState extends State<Homepg> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
//       Provider.of<todo_provider>(context, listen: false).getAllTodos();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("PROVIDER API"),
//       ),
//       body: Consumer<todo_provider>(
//         builder: (context, value, child) {
//           return Text('');
//         },
//       ),
//     );
//   }
// }


