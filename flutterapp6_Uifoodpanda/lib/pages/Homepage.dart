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
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            Homeappbar(), // Homeappbar is a sliver
            SliverToBoxAdapter(
              child: Offertab(),
            ),
            SliverToBoxAdapter(
              child: Order(),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(left: 10, top: 20),
                child: Text(
                  'Cuisine',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 10),
            ),
            SliverToBoxAdapter(
              child: Categories(),
            ),
          ],
        ),
      ),
    );
  }
}
