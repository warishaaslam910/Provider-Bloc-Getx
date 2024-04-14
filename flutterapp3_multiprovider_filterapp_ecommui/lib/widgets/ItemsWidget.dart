//////// changes applied
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp3_multiprovider_filterapp_ecommui/models/Productmodel.dart';
import 'package:flutterapp3_multiprovider_filterapp_ecommui/pages/Itemspage.dart';

class ItemsWidget extends StatefulWidget {
  final Productmodel? newProduct;

  const ItemsWidget({Key? key, required this.newProduct}) : super(key: key);

  @override
  State<ItemsWidget> createState() => _ItemsWidgetState();
}

class _ItemsWidgetState extends State<ItemsWidget> {
  late Stream<QuerySnapshot> _productsStream;

  @override
  void initState() {
    super.initState();
    _productsStream = _fetchProducts();
  }

  Stream<QuerySnapshot> _fetchProducts() {
    final currentUser = FirebaseAuth.instance.currentUser;

    if (currentUser == null) {
      throw Exception('User not authenticated.');
    }
    final userId = currentUser?.uid;
    return FirebaseFirestore.instance
        .collection('users')
        .doc('seller')
        .collection(userId!)
        .doc('profile')
        .collection('products')
        .snapshots();
  }

  @override
  Widget build(BuildContext context) {
    //final productId = widget.newProduct?.productid;

    // if (productId == null) {
    //   return Center(
    //     child: Text('Product ID not available.'),
    //   );
    // }

    return StreamBuilder<QuerySnapshot>(
      stream: _productsStream,
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return Center(
            child: Text('No products found.'),
          );
        } else {
          List products = [];

          products = snapshot.data!.docs.map((doc) {
            return doc.data();
          }).toList();

          return GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.68,
            ),
            shrinkWrap: true,
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];

              return Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Color(0xFF4C53A5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            "50%",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Itemspage(),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/images/${product['image']}.png",
                          height: 120,
                          width: 120,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 8),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '${product['productname'].toString()}' ?? '',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF4C53A5),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        //product['price'] as String? ?? '',
                        '${product['price'].toString()}' ?? '',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF4C53A5),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$55",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF4C53A5),
                            ),
                          ),
                          Icon(
                            Icons.shopping_cart_checkout,
                            color: Color(0xFF4C53A5),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        }
      },
    );
  }
}
