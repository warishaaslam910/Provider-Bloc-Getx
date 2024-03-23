// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class CartItemSamples extends StatefulWidget {
//   const CartItemSamples({super.key});

//   @override
//   State<CartItemSamples> createState() => _CartItemSamplesState();
// }

// class _CartItemSamplesState extends State<CartItemSamples> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         for (int i = 1; i < 4; i++)
//           Container(
//             height: 110,
//             margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//             padding: EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Row(
//               children: [
//                 Radio(
//                     value: "",
//                     groupValue: "",
//                     activeColor: Color(0xFF4C53A5),
//                     onChanged: (index) {}),
//                 Container(
//                   height: 70,
//                   width: 70,
//                   margin: EdgeInsets.only(right: 15),
//                   child: Image.asset("assets/images/1.png"),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.symmetric(vertical: 10),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         "Product Title",
//                         style: TextStyle(
//                           fontSize: 23,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xFF4C53A5),
//                         ),
//                       ),
//                       Text(
//                         "\$55",
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xFF4C53A5),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 /////////////amount//////////////////
//                 ///
//                 Expanded(
//                   child: Padding(
//                     padding: EdgeInsets.symmetric(
//                       vertical: 5,
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.end,
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Icon(
//                           Icons.delete,
//                           color: Colors.red,
//                         ),
//                         Row(
//                           children: [
//                             Container(
//                               padding: EdgeInsets.all(4),
//                               decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(20),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: Colors.grey.withOpacity(0.5),
//                                       spreadRadius: 1,
//                                       blurRadius: 10,
//                                     )
//                                   ]),
//                               child: Icon(
//                                 CupertinoIcons.plus,
//                                 size: 18,
//                               ),
//                             ),
//                             Container(
//                               margin: EdgeInsets.symmetric(horizontal: 10),
//                               child: Text(
//                                 "01",
//                                 style: TextStyle(
//                                   fontSize: 23,
//                                   fontWeight: FontWeight.bold,
//                                   color: Color(0xFF4C53A5),
//                                 ),
//                               ),
//                             ),
//                             Container(

//                               padding: EdgeInsets.all(4),
//                               decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   borderRadius: BorderRadius.circular(20),
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: Colors.grey.withOpacity(0.5),
//                                       spreadRadius: 1,
//                                       blurRadius: 10,
//                                     )
//                                   ]),
//                               child: Icon(
//                                 CupertinoIcons.minus,
//                                 size: 18,
//                               ),
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//       ],
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartItemSamples extends StatefulWidget {
  const CartItemSamples({Key? key}) : super(key: key);

  @override
  State<CartItemSamples> createState() => _CartItemSamplesState();
}

class _CartItemSamplesState extends State<CartItemSamples> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 1; i < 4; i++)
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Radio(
                  value: "",
                  groupValue: "",
                  activeColor: Color(0xFF4C53A5),
                  onChanged: (index) {},
                ),
                Container(
                  height: 70,
                  width: 70,
                  margin: EdgeInsets.only(right: 15),
                  child: Image.asset("assets/images/$i.png"),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Product Title",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4C53A5),
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "\$55",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF4C53A5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                /////////////amount//////////////////
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: Icon(
                              CupertinoIcons.plus,
                              size: 18,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "01",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF4C53A5),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                ),
                              ],
                            ),
                            child: Icon(
                              CupertinoIcons.minus,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
