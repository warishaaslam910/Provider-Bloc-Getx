import 'package:flutter/material.dart';

class Offertab extends StatefulWidget {
  const Offertab({super.key});

  @override
  State<Offertab> createState() => _OffertabState();
}

class _OffertabState extends State<Offertab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 166, 165, 173),
      child: Column(
        children: [
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.white,
                child: Stack(
                  children: [
                    Image(image: AssetImage('')),
                    Row(
                      children: [
                        Text(
                          'Food Delivery',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Enter Code',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 200,
                padding: const EdgeInsets.all(8),
                color: Colors.white,
                child: Stack(
                  children: [
                    Image(image: AssetImage('asset/images/foodapp-1.jpg')),
                    Row(
                      children: [
                        Text(
                          'Food Delivery',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Enter Code',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              ///////////////////////////
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.white,
                child: Stack(
                  children: [
                    Image(image: AssetImage('')),
                    Row(
                      children: [
                        Text(
                          'Food Delivery',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Enter Code',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              /////////////////////////////////
              Container(
                padding: const EdgeInsets.all(8),
                color: Colors.white,
                child: Stack(
                  children: [
                    Image(image: AssetImage('')),
                    Row(
                      children: [
                        Text(
                          'Food Delivery',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Enter Code',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
