import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp3_multiprovider_filterapp_ecommui/pages/AddPage.dart';
import 'package:flutterapp3_multiprovider_filterapp_ecommui/widgets/CategoriesWidget.dart';

import 'package:flutterapp3_multiprovider_filterapp_ecommui/widgets/SellerItemsWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category"),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddPage()));
                },
                icon: Icon(Icons.add)),
          )
        ],
        backgroundColor: Color(0xFF4C53A5),
      ),
      body: ListView(
        children: [
          //////// main container
          Container(
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                color: Color(0xFFEDECF2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )),
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
                      //searchbar
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search here..."),
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
                //////// Categories  /////////////
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
                        color: Color(0xFF4C53A5)),
                  ),
                ),
                //////////////// categories widget/////////
                ///
                CategoriesWidget(),

                //ITEMS

                SellerItemsWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
