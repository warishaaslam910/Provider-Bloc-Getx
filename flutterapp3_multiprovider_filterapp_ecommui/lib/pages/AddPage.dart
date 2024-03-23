import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  var productnamecontroller = TextEditingController();
  var productpricecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              color: Color(0xFF4C53A5),
              padding: EdgeInsets.fromLTRB(25, 30, 25, 25),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      "My Blog",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ////////////////////////////////////// Post btn ////////////////////////////
                  InkWell(
                    onTap: () async {},
                    child: Text(
                      "POST",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    print('Image Clicked!');
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Container(
                        width: double.infinity,
                        height: 300,
                        decoration: BoxDecoration(
                          color: Color(0xFFEDECF2),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              iconSize: 55,
                              color: Color.fromARGB(255, 184, 181, 181),
                              onPressed: () {
                                ///////////////////////image functionality/////////////////
                                ////method to call image
                              },
                              icon: Icon(Icons.add_a_photo),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Add Photo",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            ),
            Scrollbar(
              child: Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextField(
                      controller: productnamecontroller,
                      minLines: 2,
                      maxLines: 20,
                      decoration: InputDecoration(
                        labelText: "Product",
                        hintText: "Enter Product",
                        labelStyle: TextStyle(
                          color: Color(0xFF4C53A5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Color(0xFF4C53A5)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextField(
                      controller: productpricecontroller,
                      minLines: 2,
                      maxLines: 20,
                      decoration: InputDecoration(
                        labelStyle: TextStyle(
                          color: Color(0xFF4C53A5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Color(0xFF4C53A5)),
                        ),
                        labelText: "Price",
                        hintText: "Enter Price",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}