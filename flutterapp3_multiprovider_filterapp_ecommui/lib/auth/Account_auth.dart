import 'package:flutter/material.dart';

class Account_auth extends StatefulWidget {
  const Account_auth({super.key});

  @override
  State<Account_auth> createState() => _Account_authState();
}

class _Account_authState extends State<Account_auth> {
  late Size mq;
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;

    return Scaffold(
      //body
      body: Stack(children: [
        //app logo
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Text(
                  "e-commerce.",
                  style: TextStyle(
                    color: Color(0xFF4C53A5),
                    fontSize: 48,
                  ),
                ))
              ],
            ),
          ),
        ),
        //Seller Account button
        Positioned(
            bottom: mq.height * .15,
            left: mq.width * .05,
            width: mq.width * .9,
            height: mq.height * .06,
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4C53A5),
                    shape: const StadiumBorder(),
                    elevation: 1),
                onPressed: () {},
                icon: Icon(
                  Icons.person_2_outlined,
                  color: Colors.white,
                ),

                //Account_auth with google label
                label: RichText(
                  text: const TextSpan(
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      children: [
                        TextSpan(text: 'Become a'),
                        TextSpan(
                            text: 'Seller',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white)),
                      ]),
                ))),

//////////////Buyer Account btn
        Positioned(
            bottom: mq.height * .15,
            left: mq.width * .05,
            width: mq.width * .9,
            height: mq.height * .06,
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4C53A5),
                    shape: const StadiumBorder(),
                    elevation: 1),
                onPressed: () {},

                //google icon
                icon: Icon(
                  Icons.sell_outlined,
                  color: Colors.white,
                ),

                //Account_auth with google label
                label: RichText(
                  text: const TextSpan(
                      style: TextStyle(color: Colors.white, fontSize: 16),
                      children: [
                        TextSpan(text: 'Become a'),
                        TextSpan(
                            text: 'Buyer',
                            style: TextStyle(fontWeight: FontWeight.w500)),
                      ]),
                ))),
      ]),
    );
  }
}
