// ////duplicate ////

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import 'package:flutterapp3_multiprovider_filterapp_ecommui/widgets/CategoriesWidget.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutterapp3_multiprovider_filterapp_ecommui/widgets/Sidebar.dart';
// import '../models/Productmodel.dart';
// import '../widgets/HomeAppBar.dart';
// import '../widgets/ItemsWidget.dart';

// class HomePage extends StatefulWidget {
//   final Productmodel? newProduct;
//   HomePage({Key? key, required this.newProduct}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Sidebar(),
//       body: ListView(
//         children: [
//           HomeAppBar(),
//           //////// main container
//           Container(
//             padding: EdgeInsets.only(top: 15),
//             decoration: BoxDecoration(
//               color: Color(0xFFEDECF2),
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(35),
//                 topRight: Radius.circular(35),
//               ),
//             ),
//             child: Column(
//               children: [
//                 Container(
//                   margin: EdgeInsets.symmetric(horizontal: 15),
//                   padding: EdgeInsets.symmetric(horizontal: 15),
//                   height: 50,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   child: Row(
//                     children: [
//                       //searchbar
//                       Container(
//                         margin: EdgeInsets.only(left: 5),
//                         height: 50,
//                         width: 300,
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                             border: InputBorder.none,
//                             hintText: "Search here...",
//                           ),
//                         ),
//                       ),
//                       Spacer(),
//                       Icon(
//                         Icons.camera_alt,
//                         size: 27,
//                         color: Color(0xFF4C53A5),
//                       ),
//                     ],
//                   ),
//                 ),
//                 //////// Categories  /////////////
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   margin: EdgeInsets.symmetric(
//                     vertical: 20,
//                     horizontal: 10,
//                   ),
//                   child: Text(
//                     "Categories",
//                     style: TextStyle(
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold,
//                       color: Color(0xFF4C53A5),
//                     ),
//                   ),
//                 ),
//                 //////////////// categories widget/////////
//                 ///
//                 CategoriesWidget(
//                   newProduct: widget.newProduct,
//                 ),

//                 //ITEMS
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
//                   child: Text(
//                     "Best Selling",
//                     style: TextStyle(
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold,
//                       color: Color(0xFF4C53A5),
//                     ),
//                   ),
//                 ),
//                 ItemsWidget(newProduct: widget.newProduct!),
//               ],
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: CurvedNavigationBar(
//         height: 70,
//         backgroundColor: Colors.transparent,
//         onTap: (index) {},
//         color: Color(0xFF4C53A5),
//         items: [
//           Icon(
//             Icons.home,
//             size: 30,
//             color: Colors.white,
//           ),
//           Icon(
//             CupertinoIcons.cart_fill,
//             size: 30,
//             color: Colors.white,
//           ),
//           Icon(
//             Icons.list,
//             size: 30,
//             color: Colors.white,
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import 'package:flutterapp3_multiprovider_filterapp_ecommui/widgets/CategoriesWidget.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutterapp3_multiprovider_filterapp_ecommui/widgets/Sidebar.dart';
// import '../models/Productmodel.dart';
// import '../widgets/HomeAppBar.dart';
// import '../widgets/ItemsWidget.dart';

// class HomePage extends StatefulWidget {
//   final Productmodel? newProduct;
//   HomePage({Key? key, required this.newProduct}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Sidebar(),
//       body: ListView(
//         children: [
//           HomeAppBar(),
//           Container(
//             padding: EdgeInsets.only(top: 15),
//             decoration: BoxDecoration(
//               color: Color(0xFFEDECF2),
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(35),
//                 topRight: Radius.circular(35),
//               ),
//             ),
//             child: Column(
//               children: [
//                 Container(
//                   margin: EdgeInsets.symmetric(horizontal: 15),
//                   padding: EdgeInsets.symmetric(horizontal: 15),
//                   height: 50,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   child: Row(
//                     children: [
//                       Container(
//                         margin: EdgeInsets.only(left: 5),
//                         height: 50,
//                         width: 300,
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                             border: InputBorder.none,
//                             hintText: "Search here...",
//                           ),
//                         ),
//                       ),
//                       Spacer(),
//                       Icon(
//                         Icons.camera_alt,
//                         size: 27,
//                         color: Color(0xFF4C53A5),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   margin: EdgeInsets.symmetric(
//                     vertical: 20,
//                     horizontal: 10,
//                   ),
//                   child: Text(
//                     "Categories",
//                     style: TextStyle(
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold,
//                       color: Color(0xFF4C53A5),
//                     ),
//                   ),
//                 ),
//                 CategoriesWidget(
//                   newProduct: widget.newProduct,
//                 ),
//                 Container(
//                   alignment: Alignment.centerLeft,
//                   margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
//                   child: Text(
//                     "Best Selling",
//                     style: TextStyle(
//                       fontSize: 25,
//                       fontWeight: FontWeight.bold,
//                       color: Color(0xFF4C53A5),
//                     ),
//                   ),
//                 ),
//                 // Check if widget.newProduct is not null before using ItemsWidget
//                 if (widget.newProduct != null)
//                   ItemsWidget(newProduct: widget.newProduct!),
//               ],
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: CurvedNavigationBar(
//         height: 70,
//         backgroundColor: Colors.transparent,
//         onTap: (index) {},
//         color: Color(0xFF4C53A5),
//         items: [
//           Icon(
//             Icons.home,
//             size: 30,
//             color: Colors.white,
//           ),
//           Icon(
//             CupertinoIcons.cart_fill,
//             size: 30,
//             color: Colors.white,
//           ),
//           Icon(
//             Icons.list,
//             size: 30,
//             color: Colors.white,
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutterapp3_multiprovider_filterapp_ecommui/widgets/CategoriesWidget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutterapp3_multiprovider_filterapp_ecommui/widgets/Sidebar.dart';
import '../models/Productmodel.dart';
import '../widgets/HomeAppBar.dart';
import '../widgets/ItemsWidget.dart';

class HomePage extends StatefulWidget {
  final Productmodel? newProduct;

  HomePage({Key? key, required this.newProduct}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Sidebar(),
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here...",
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.camera_alt,
                        size: 27,
                        color: Color(0xFF4C53A5),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ),
                // Display CategoriesWidget only if newProduct is not null

                CategoriesWidget(newProduct: widget.newProduct),

                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Best Selling",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ),
                // Display ItemsWidget only if newProduct is not null

                ItemsWidget(newProduct: widget.newProduct),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 70,
        backgroundColor: Colors.transparent,
        onTap: (index) {},
        color: Color(0xFF4C53A5),
        items: [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            CupertinoIcons.cart_fill,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
