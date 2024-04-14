// import 'dart:async';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:flutterapp3_multiprovider_filterapp_ecommui/models/Cartmodel.dart';
// import 'package:flutterapp3_multiprovider_filterapp_ecommui/models/Categorymodel.dart';
// import 'package:flutterapp3_multiprovider_filterapp_ecommui/models/Productmodel.dart';
// import 'package:flutterapp3_multiprovider_filterapp_ecommui/models/Usermodel.dart';
// import 'package:uuid/uuid.dart';

// import 'pages/HomePage.dart';

// class Api {
//   static FirebaseAuth auth = FirebaseAuth.instance;
//   static FirebaseFirestore firestore = FirebaseFirestore.instance;
//   static FirebaseStorage storage = FirebaseStorage.instance;

//   static Productmodel? newProduct;
//   static StreamController<List<Productmodel>> productStreamcontroller =
//       StreamController<List<Productmodel>>();

//   //static StreamController? productStreamcontroller;
// // to return current user
//   static User get user => auth.currentUser!;
//   static String generatePushid() {
//     var uuid = Uuid();
//     return uuid.v4();
//   }

// /////********************************set seller///********************************
//   static Future<void> createUserseller(BuildContext context) async {
//     final User_seller = Usermodel(
//         userimage: user.photoURL.toString(),
//         userId: user.uid,
//         useremail: user.email.toString(),
//         username: user.displayName.toString());

//     await firestore
//         .collection('users')
//         .doc('seller')
//         .collection(user.uid)
//         .doc('profile')
//         .set(User_seller.toJson())
//         .then((value) => Navigator.pushReplacement(
//               context,
//               MaterialPageRoute(
//                   builder: (context) => HomePage(
//                       productStreamcontroller: Api.productStreamcontroller)),
//             ));
//   }

// /////********************************set buyer///********************************
//   static Future<void> createUserbuyer() async {
//     final User_buyer = Usermodel(
//         userimage: user.photoURL.toString(),
//         userId: user.uid,
//         useremail: user.email.toString(),
//         username: user.displayName.toString());

//     return await firestore
//         .collection('users')
//         .doc('buyer')
//         .collection(user.uid)
//         .doc('profile')
//         .set(User_buyer.toJson());
//   }

//   ///********************************set product according to category********************************
//   static Future<void> AddProduct(Categorymodel category, String product_id,
//       String product_name, int product_price) async {
//     final productwithcategory = Productmodel(
//         productid: product_id.toString(),
//         price: product_price,
//         productname: product_name.toString(),
//         category: category.categoryname);

//     return await firestore
//         .collection('users')
//         .doc('seller')
//         .collection(user.uid)
//         .doc('profile')
//         .collection('products')
//         .doc(product_id)
//         .set(productwithcategory.toJson());
//   }

//   ///********************************set update cart payment********************************
//   static Future<void> Updatecartpayment(
//       int payment_amount, int cart_item, String buyer_id) async {
//     final cartitemprice = Cartmodel(
//         paymentamount: payment_amount,
//         userid: buyer_id.toString(),
//         cartitem: cart_item);
//     final DocumentReference cartRef = firestore
//         .collection('users')
//         .doc('buyer')
//         .collection(user.uid)
//         .doc('cart');
//     DocumentSnapshot cartSnapshot = await cartRef.get();
//     if (!cartSnapshot.exists) {
//       // If cart document doesn't exist, create it with initial values
//       await cartRef.set(cartitemprice.toJson());
//     }
//     // Get current cart data
//     Map<String, dynamic> cartData = cartSnapshot.data() as Map<String, dynamic>;
//     int currentCartItem = cartData['cartitem'] ?? 0;
//     //int currentPaymentAmount = cartData['paymentamount'] ?? 0;

//     // Increment cart item count by 1
//     int updatedCartItem = currentCartItem + 1;

//     // Calculate total payment amou ygy nt
//     int productPrice = 0; // You need to define product price here
//     int updatedPaymentAmount = updatedCartItem * productPrice;

//     // Update cart data
//     await cartRef.update({
//       'cartitem': updatedCartItem,
//       'paymentamount': updatedPaymentAmount,
//     });
//   }

//   /////******************************** get products of seller********************************
//   static Stream<QuerySnapshot<Map<String, dynamic>>> getAllProducts() {
//     // return firestore
//     //     .collection('users/seller/user.uid/profile/product/product_id')
//     //     .snapshots();

//     return firestore
//         .collection('users')
//         .doc('seller')
//         .collection(user.uid)
//         .doc('profile')
//         .collection('products')
//         .snapshots();
//   }
// }

////duplicate////
import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp3_multiprovider_filterapp_ecommui/models/Cartmodel.dart';
import 'package:flutterapp3_multiprovider_filterapp_ecommui/models/Categorymodel.dart';
import 'package:flutterapp3_multiprovider_filterapp_ecommui/models/Productmodel.dart';
import 'package:flutterapp3_multiprovider_filterapp_ecommui/models/Usermodel.dart';
import 'package:uuid/uuid.dart';

import 'pages/HomePage.dart';

class Api {
  static FirebaseAuth auth = FirebaseAuth.instance;
  static FirebaseFirestore firestore = FirebaseFirestore.instance;
  static FirebaseStorage storage = FirebaseStorage.instance;

  static Productmodel? newProduct;

  //static StreamController? productStreamcontroller;
// to return current user
  static User get user => auth.currentUser!;
  static String generatePushid() {
    var uuid = Uuid();
    return uuid.v4();
  }

/////********************************set seller///********************************
  static Future<void> createUserseller(BuildContext context) async {
    final User_seller = Usermodel(
        userimage: user.photoURL.toString(),
        userId: user.uid,
        useremail: user.email.toString(),
        username: user.displayName.toString());

    await firestore
        .collection('users')
        .doc('seller')
        .collection(user.uid)
        .doc('profile')
        .set(User_seller.toJson())
        .then((value) => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => HomePage(
                        newProduct: newProduct,
                      )),
            ));
  }

/////********************************set buyer///********************************
  static Future<void> createUserbuyer(BuildContext context) async {
    final User_buyer = Usermodel(
        userimage: user.photoURL.toString(),
        userId: user.uid,
        useremail: user.email.toString(),
        username: user.displayName.toString());

    await firestore
        .collection('users')
        .doc('buyer')
        .collection(user.uid)
        .doc('profile')
        .set(User_buyer.toJson())
        .then((value) => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => HomePage(
                        newProduct: newProduct,
                      )),
            ));
  }

  ///********************************set product according to category********************************
  static Future<void> AddProduct(Categorymodel category, String product_id,
      String product_name, int product_price) async {
    final productwithcategory = Productmodel(
        productid: product_id.toString(),
        price: product_price,
        productname: product_name.toString(),
        category: category.categoryname);

    return await firestore
        .collection('users')
        .doc('seller')
        .collection(user.uid)
        .doc('profile')
        .collection('products')
        .doc(product_id)
        .set(productwithcategory.toJson());
  }

  ///********************************set update cart payment********************************
  static Future<void> Updatecartpayment(
      int payment_amount, int cart_item, String buyer_id) async {
    final cartitemprice = Cartmodel(
        paymentamount: payment_amount,
        userid: buyer_id.toString(),
        cartitem: cart_item);
    final DocumentReference cartRef = firestore
        .collection('users')
        .doc('buyer')
        .collection(user.uid)
        .doc('cart');
    DocumentSnapshot cartSnapshot = await cartRef.get();
    if (!cartSnapshot.exists) {
      // If cart document doesn't exist, create it with initial values
      await cartRef.set(cartitemprice.toJson());
    }
    // Get current cart data
    Map<String, dynamic> cartData = cartSnapshot.data() as Map<String, dynamic>;
    int currentCartItem = cartData['cartitem'] ?? 0;
    //int currentPaymentAmount = cartData['paymentamount'] ?? 0;

    // Increment cart item count by 1
    int updatedCartItem = currentCartItem + 1;

    // Calculate total payment amou ygy nt
    int productPrice = 0; // You need to define product price here
    int updatedPaymentAmount = updatedCartItem * productPrice;

    // Update cart data
    await cartRef.update({
      'cartitem': updatedCartItem,
      'paymentamount': updatedPaymentAmount,
    });
  }

  /////******************************** get products of seller********************************
  static Stream<QuerySnapshot<Map<String, dynamic>>> getAllProducts() {
    // return firestore
    //     .collection('users/seller/user.uid/profile/product/product_id')
    //     .snapshots();

    return firestore
        .collection('users')
        .doc('seller')
        .collection(user.uid)
        .doc('profile')
        .collection('products')
        .snapshots();
  }
}
