// import 'package:flutter/material.dart';

// class Homeappbar extends StatefulWidget {
//   const Homeappbar({super.key});

//   @override
//   State<Homeappbar> createState() => _HomeappbarState();
// }

// class _HomeappbarState extends State<Homeappbar> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Color.fromARGB(255, 215, 15, 100),
//       //  color: Color.fromARGB(255, 146, 145, 161),
//       // color: Color.fromARGB(255, 51, 51, 51),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               InkWell(
//                   onTap: () {},
//                   child: Icon(
//                     Icons.menu,
//                     size: 23,
//                   )),
//               Container(
//                 child: Column(
//                   children: [
//                     Text(
//                       'Home',
//                       style: TextStyle(color: AppTheme.accentColor),
//                     ),
//                     Text(
//                       'Royal Society Block 2 Street no 14',
//                       style: TextStyle(color: AppTheme.accentColor),
//                     ),
//                   ],
//                 ),
//               ),
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(Icons.favorite_border),
//                 color: AppTheme.accentColor,
//               ),
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(Icons.shopping_bag_outlined),
//                 color: AppTheme.accentColor,
//               )
//             ],
//           ),
//           Row(
//             children: [
//               TextField(
//                 decoration: InputDecoration(
//                     fillColor: AppTheme.accentColor,
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     prefixIcon: Icon(Icons.search),
//                     hintText: 'Search for shops & restraunts'),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class Homeappbar extends StatefulWidget {
//   const Homeappbar({super.key});

//   @override
//   State<Homeappbar> createState() => _HomeappbarState();
// }

// class _HomeappbarState extends State<Homeappbar> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Color.fromARGB(255, 215, 15, 100),
//       padding: EdgeInsets.all(10.0), // Added padding for better layout
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               InkWell(
//                 onTap: () {},
//                 child: Icon(
//                   Icons.menu,
//                   size: 23,
//                   color: AppTheme.accentColor,
//                 ),
//               ),
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 10),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Home',
//                         style: TextStyle(color: AppTheme.accentColor, fontSize: 16),
//                       ),
//                       Text(
//                         'Royal Society Block 2 Street no 14',
//                         style: TextStyle(color: AppTheme.accentColor, fontSize: 12),
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Row(
//                 children: [
//                   IconButton(
//                     onPressed: () {},
//                     icon: Icon(Icons.favorite_border),
//                     color: AppTheme.accentColor,
//                   ),
//                   IconButton(
//                     onPressed: () {},
//                     icon: Icon(Icons.shopping_bag_outlined),
//                     color: AppTheme.accentColor,
//                   )
//                 ],
//               )
//             ],
//           ),
//           SizedBox(height: 10),
//           Row(
//             children: [
//               Expanded(
//                 child: SizedBox(
//                   height: 28,
//                   child: TextField(
//                     decoration: InputDecoration(
//                         fillColor: AppTheme.accentColor,
//                         filled: true,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(15),
//                         ),
//                         prefixIcon: Icon(Icons.search),
//                         hintText: 'Search for shops & restaurants',
//                         hintStyle: TextStyle(fontSize: 12)),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }




// import 'package:flutter/material.dart';
// import 'package:flutterapp_7/widgets/Categories.dart';
// import 'package:flutterapp_7/widgets/Homeappbar.dart';
// import 'package:flutterapp_7/widgets/Offertab.dart';
// import 'package:flutterapp_7/widgets/Order.dart';

// class Homepage extends StatefulWidget {
//   const Homepage({super.key});

//   @override
//   State<Homepage> createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//       width: double.infinity,
//       height: double.infinity,
//       child: Column(
//         children: [
//           Homeappbar(),
//           Expanded(
//             child: ListView(
//               children: [
//                 Offertab(),
//                 Order(),
//                 Padding(
//                   padding: EdgeInsets.only(left: 10),
//                   child: Text(
//                     'Cuisine',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 Categories()
//               ],
//             ),
//           ),
//         ],
//       ),
//     ));
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutterapp_7/widgets/Categories.dart';
// import 'package:flutterapp_7/widgets/Homeappbar.dart';
// import 'package:flutterapp_7/widgets/Offertab.dart';
// import 'package:flutterapp_7/widgets/Order.dart';

// class Homepage extends StatefulWidget {
//   const Homepage({super.key});

//   @override
//   State<Homepage> createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           Homeappbar(),
//           Offertab(),
//           Order(),
//           Padding(
//             padding: EdgeInsets.only(left: 10),
//             child: Text(
//               'Cuisine',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Categories()
//         ],
//       ),
//     );
//   }
// }