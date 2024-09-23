// import 'package:flutter/material.dart';

// class Offertab extends StatefulWidget {
//   const Offertab({super.key});

//   @override
//   State<Offertab> createState() => _OffertabState();
// }

// class _OffertabState extends State<Offertab> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Color.fromARGB(255, 166, 165, 173),
//       child: Column(
//         children: [
//           GridView.count(

//             crossAxisCount: 2,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,

//             children: <Widget>[
//               Container(
//                 height: 200,
//                 padding: const EdgeInsets.all(8),
//                 color: Colors.white,
//                 child: Stack(
//                   children: [
//                     Image(image: AssetImage('')),
//                     Row(
//                       children: [
//                         Text(
//                           'Food Delivery',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         Text(
//                           'Enter Code',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 height: 200,
//                 padding: const EdgeInsets.all(8),
//                 color: Colors.white,
//                 child: Stack(
//                   children: [
//                     Image(image: AssetImage('asset/images/foodapp-1.jpg')),
//                     Row(
//                       children: [
//                         Text(
//                           'Food Delivery',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         Text(
//                           'Enter Code',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),

//               ///////////////////////////
//               Container(
//                 height: 100,
//                 padding: const EdgeInsets.all(8),
//                 color: Colors.white,
//                 child: Stack(
//                   children: [
//                     Image(image: AssetImage('')),
//                     Row(
//                       children: [
//                         Text(
//                           'Food Delivery',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         Text(
//                           'Enter Code',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               /////////////////////////////////
//               Container(
//                 height: 100,
//                 padding: const EdgeInsets.all(8),
//                 color: Colors.white,
//                 child: Stack(
//                   children: [
//                     Image(image: AssetImage('')),
//                     Row(
//                       children: [
//                         Text(
//                           'Food Delivery',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         Text(
//                           'Enter Code',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
////////////////////////without images//////////////
// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// class Offertab extends StatefulWidget {
//   const Offertab({super.key});

//   @override
//   State<Offertab> createState() => _OffertabState();
// }

// class _OffertabState extends State<Offertab> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         width: double.infinity,
//         color: Color.fromARGB(255, 228, 227, 235),
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
//           child: Column(
//             children: [
//               StaggeredGrid.count(
//                 crossAxisCount: 4,
//                 crossAxisSpacing: 8,
//                 mainAxisSpacing: 8,
//                 children: [
//                   StaggeredGridTile.count(
//                       crossAxisCellCount: 2,
//                       mainAxisCellCount: 2.1,
//                       child: Container(
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(8),
//                             border:
//                                 Border.all(width: 0.5, color: Colors.black26)),
//                       )),

//                   /////////////////////////
//                   StaggeredGridTile.count(
//                       crossAxisCellCount: 2,
//                       mainAxisCellCount: 2.1,
//                       child: Container(
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(8),
//                             border:
//                                 Border.all(width: 0.5, color: Colors.black26)),
//                       )),

//                   ///////////////////////
//                   StaggeredGridTile.count(
//                       crossAxisCellCount: 2,
//                       mainAxisCellCount: 1.05,
//                       child: Container(
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(8),
//                             border:
//                                 Border.all(width: 0.5, color: Colors.black26)),
//                       )),
//                   ////////////////////////
//                   StaggeredGridTile.count(
//                       crossAxisCellCount: 2,
//                       mainAxisCellCount: 1.05,
//                       child: Container(
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(8),
//                             border:
//                                 Border.all(width: 0.5, color: Colors.black26)),
//                       ))
//                 ],
//               )
//             ],
//           ),
//         ));
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Offertab extends StatefulWidget {
  const Offertab({super.key});

  @override
  State<Offertab> createState() => _OffertabState();
}

class _OffertabState extends State<Offertab> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: Color.fromARGB(255, 228, 227, 235),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Column(
            children: [
              StaggeredGrid.count(
                crossAxisCount: 4,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: [
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2.1,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  width: 0.5, color: Colors.black26)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Food Delivery',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Order food you love',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Image.asset(
                                      'asset/images/Food_Delivery.png',
                                      height: 100,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ))),

                  /////////////////////////
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2.1,
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  width: 0.5, color: Colors.black26)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'pandamart',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Essentials delivered fast',
                                      style: TextStyle(
                                        fontSize: 12,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Image.asset(
                                    'asset/images/pandamart (1).png',
                                    fit: BoxFit.cover,
                                    height: 100,
                                  ),
                                ),
                              ),
                            ],
                          ))),

                  ///////////////////////3
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 1.05,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border:
                                Border.all(width: 0.5, color: Colors.black26)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 10,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Shops',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Top brands to your door',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Image.asset(
                                    'asset/images/shops.png',
                                    fit: BoxFit.contain,
                                    height: 100,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                  ////////////////////////4
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 1.05,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border:
                                Border.all(width: 0.5, color: Colors.black26)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 10,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Pick-up',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Self-collect for 50%',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    '50%',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Image.asset(
                                    'asset/images/pick_up.png',
                                    fit: BoxFit.contain,
                                    height: 100,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                  ///////////////////5
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 1.05,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border:
                                Border.all(width: 0.5, color: Colors.black26)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 10,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Catering',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Plan events with ease',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            // Align(
                            //   alignment: Alignment.bottomRight,
                            //   child: Padding(
                            //     padding: EdgeInsets.all(8),
                            //     child: Image.asset(
                            //       'asset/images/pick_up.png',
                            //       fit: BoxFit.cover,
                            //       height: 100,
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                      )),
                  ////////////////////////6
                  StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 1.05,
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border:
                                Border.all(width: 0.5, color: Colors.black26)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 10,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'pandago',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Send parcels in a tap',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Image.asset(
                                    'asset/images/pandago.png',
                                    fit: BoxFit.contain,
                                    height: 120,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ))
                ],
              )
            ],
          ),
        ));
  }
}
