import 'package:flutter/material.dart';

class Homeappbar extends StatefulWidget {
  const Homeappbar({super.key});

  @override
  State<Homeappbar> createState() => _HomeappbarState();
}

class _HomeappbarState extends State<Homeappbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 215, 15, 100),
      //  color: Color.fromARGB(255, 146, 145, 161),
      // color: Color.fromARGB(255, 51, 51, 51),
      child: Column(
        children: [
          Row(
            children: [
              InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.menu,
                    size: 23,
                  )),
              Container(
                child: Column(
                  children: [
                    Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      'Royal Society Block 2 Street no 14',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_border),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.shopping_bag_outlined),
                color: Colors.white,
              )
            ],
          ),
          Row(
            children: [
              TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search for shops & restraunts'),
              )
            ],
          )
        ],
      ),
    );
  }
}
