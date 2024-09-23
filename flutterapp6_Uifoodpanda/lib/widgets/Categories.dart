import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List foods = ['Pizza', 'Beverages', 'Burger', 'Snacks'];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: SizedBox(
        height: 95,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: foods.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    width: 80,
                    margin: EdgeInsets.only(left: 15),
                    padding: EdgeInsetsDirectional.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          'asset/images/${foods[index]}.png',
                          width: 70,
                          height: 70,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Text(
                      foods[index],
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
