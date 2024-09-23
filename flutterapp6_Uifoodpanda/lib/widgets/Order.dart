// import 'package:flutter/material.dart';

// class Order extends StatefulWidget {
//   const Order({super.key});

//   @override
//   State<Order> createState() => _OrderState();
// }

// class _OrderState extends State<Order> {
//   final List<Map<String, dynamic>> restraunts = [
//     {
//       'name': 'Beef Smash',
//       'rating': '3.5',
//       'review': '30+',
//       'imagepath': 'asset/images/FoodsShop5.jpg',
//       'mincharges': 'PKR 199 minimum',
//       'cuisine': 'Pakistani',
//       'time': '5-20 min',
//       'discount': '25% off',
//       'deliverytype': 'Free Delivery'
//     },
//     {
//       'name': 'Pizza Plus',
//       'rating': '4.5',
//       'review': '50+',
//       'imagepath': 'asset/images/pizzahouse.jpg',
//       'mincharges': 'PKR 499 minimum',
//       'cuisine': 'Pakistani',
//       'time': '15-20 min',
//       'discount': '5% off',
//       'deliverytype': 'Free Delivery'
//     },
//     {
//       'name': 'Optp',
//       'rating': '4.5',
//       'review': '100+',
//       'imagepath': 'asset/images/FoodsShop 3 (1).jpg',
//       'mincharges': 'PKR 599 minimum',
//       'cuisine': 'Pakistani',
//       'time': '5-30 min',
//       'discount': '',
//       'deliverytype': 'Free Delivery'
//     },
//     {
//       'name': 'Mc Donalds',
//       'rating': '4',
//       'review': '100+',
//       'imagepath': 'asset/images/order1.jpg',
//       'mincharges': 'PKR 259 minimum',
//       'cuisine': 'Pakistani',
//       'time': '25-30 min',
//       'discount': '',
//       'deliverytype': 'Free Delivery'
//     },
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         itemCount: 4,
//         itemBuilder: (context, index) {
//           return Mycustomlisttile();
//         });
//   }

//   Widget Mycustomlisttile() {
//     return Padding(
//       padding: EdgeInsets.all(15),
//       child: Column(
//         children: [
//           Container(
//             height: 200,
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 image: DecorationImage(
//                     image: AssetImage('asset/images/order1.jpg'),
//                     fit: BoxFit.cover,
//                     opacity: 0.8)),
//           ),
//           ///////////order
//           Padding(
//             padding: EdgeInsets.only(top: 10),
//             child: Row(
//               children: [
//                 Text(
//                   'Mc Donalds- Big Offer',
//                   style: TextStyle(
//                       color: Colors.black, fontWeight: FontWeight.bold),
//                 ),
//                 Padding(
//                   padding: EdgeInsets.only(top: 8),
//                   child: Row(
//                     children: [
//                       Icon(
//                         Icons.delivery_dining,
//                         size: 22,
//                       ),
//                       Text(
//                         'Fast Food ,Fried Chicken',
//                         style: TextStyle(
//                             color: Colors.grey, fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  final List<Map<String, dynamic>> restaurant = [
    {
      'name': 'Beef Smash',
      'rating': '3.5',
      'review': '30+',
      'imagepath': 'asset/images/FoodsShop5.jpg',
      'mincharges': 'PKR 199 minimum',
      'cuisine': 'Pakistani',
      'time': '5-20 min',
      'discount': '25% off',
      'deliverytype': 'Free Delivery'
    },
    {
      'name': 'Pizza Plus',
      'rating': '4.5',
      'review': '50+',
      'imagepath': 'asset/images/pizzahouse.jpg',
      'mincharges': 'PKR 499 minimum',
      'cuisine': 'Pakistani',
      'time': '15-20 min',
      'discount': '5% off',
      'deliverytype': 'Free Delivery'
    },
    {
      'name': 'Optp',
      'rating': '4.5',
      'review': '100+',
      'imagepath': 'asset/images/FoodsShop 3 (1).jpg',
      'mincharges': 'PKR 599 minimum',
      'cuisine': 'Pakistani',
      'time': '5-30 min',
      'discount': '20% off',
      'deliverytype': 'Free Delivery'
    },
    {
      'name': 'Mc Donalds',
      'rating': '4',
      'review': '100+',
      'imagepath': 'asset/images/order1.jpg',
      'mincharges': 'PKR 259 minimum',
      'cuisine': 'Pakistani',
      'time': '25-30 min',
      'discount': '',
      'deliverytype': 'Free Delivery'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Free delivery',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 240,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: restaurant.length,
                      itemBuilder: (context, index) {
                        return FreeDeliveryOptions(restaurant[index]);
                      }),
                )
              ],
            ),
          ),
          SizedBox(
            height: 6,
          )
        ],
      ),
    );
  }

  Widget FreeDeliveryOptions(Map<String, dynamic> restaurant) {
    return Container(
      width: 240,
      margin: EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
                child: Image.asset(
                  restaurant['imagepath'],
                  height: 140,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
////////////////discount cond
                    if (restaurant['discount'].isNotEmpty)
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 215, 15, 100),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            )),
                        child: Text(
                          restaurant['discount'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                    Container(
                      margin: restaurant['discount'].isNotEmpty
                          ? EdgeInsets.only(top: 8)
                          : EdgeInsets.only(),
                      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 215, 15, 100),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8),
                          )),
                      child: Text(
                        restaurant['deliverytype'],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),

          ///////////////////////////name
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      restaurant['name'],
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 18,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          restaurant['rating'],
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          '(${restaurant['review']})',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.6),
                            fontSize: 12,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  '${restaurant['mincharges']}+${restaurant['cuisine']}',
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.6), fontSize: 12),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.access_time, color: Colors.black, size: 16),
                    SizedBox(width: 4),
                    Text(
                      restaurant['time'],
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.6),
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 15),
                    Icon(Icons.delivery_dining_rounded,
                        color: Color.fromARGB(255, 215, 15, 100), size: 16),
                    SizedBox(width: 5),
                    Text(
                      restaurant['deliverytype'],
                      style: TextStyle(
                        color: Color.fromARGB(255, 215, 15, 100),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
