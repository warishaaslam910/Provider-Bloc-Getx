// ////////////duplicate
// import 'package:flutter/material.dart';

// import '../models/Productmodel.dart';
// import '../pages/CategoryPage.dart';

// class CategoriesWidget extends StatefulWidget {
//   //const CategoriesWidget({super.key});
//   final Productmodel? newProduct;

//   const CategoriesWidget({Key? key, required this.newProduct})
//       : super(key: key);
//   @override
//   State<CategoriesWidget> createState() => _CategoriesWidgetState();
// }

// class _CategoriesWidgetState extends State<CategoriesWidget> {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: [
//           for (int i = 1; i < 8; i++)
//             GestureDetector(
//               onTap: () {
//                 if (widget.newProduct != null) {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: ((context) => CategoryPage(
//                                 newProduct: widget.newProduct!,
//                               ))));
//                 }
//               },
//               child: Container(
//                 margin: EdgeInsets.symmetric(horizontal: 10),
//                 padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Image.asset(
//                       "assets/images/$i.png",
//                       width: 40,
//                       height: 40,
//                     ),
//                     Text(
//                       "Sandal",
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 16,
//                           color: Color(0xFF4C53A5)),
//                     )
//                   ],
//                 ),
//               ),
//             )
//         ],
//       ),
//     );
//   }
// }

////////////duplicate
import 'package:flutter/material.dart';
import '../models/Productmodel.dart';
import '../pages/CategoryPage.dart';

class CategoriesWidget extends StatefulWidget {
  final Productmodel? newProduct;

  const CategoriesWidget({Key? key, required this.newProduct})
      : super(key: key);

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    print('Building CategoriesWidget');

    List<String> categoriestypes = [
      "Sandals",
      "Watches",
      "Bags",
      "Makeup",
      "Perfumes"
    ];

    return Container(
      height: 44,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriestypes.length,
        itemBuilder: (context, index) {
          String category = categoriestypes[index];
          int imageIndex = index + 1; // Adjust index for image assets

          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        CategoryPage(newProduct: widget.newProduct),
                  ));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/$imageIndex.png",
                    height: 40,
                    width: 40,
                  ),
                  SizedBox(width: 8), // Add spacing between image and text

                  Text(
                    category,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF4C53A5),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
