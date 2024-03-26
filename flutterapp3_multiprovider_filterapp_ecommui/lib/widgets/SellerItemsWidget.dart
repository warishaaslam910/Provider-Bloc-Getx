import 'package:flutter/material.dart';
import 'package:flutterapp3_multiprovider_filterapp_ecommui/pages/Itemspage.dart';

class SellerItemsWidget extends StatefulWidget {
  const SellerItemsWidget({super.key});

  @override
  State<SellerItemsWidget> createState() => _SellerItemsWidgetState();
}

class _SellerItemsWidgetState extends State<SellerItemsWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 0.68,
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 8; i++)
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
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
                        ".50%",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.red,
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => (Itemspage()))));
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/images/$i.png",
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Product Title",
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
                    "Write desc of product",
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
                        Icons.delete,
                        color: Color(0xFF4C53A5),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
      ],
    );
  }
}
