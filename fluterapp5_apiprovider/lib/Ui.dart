// import 'package:fluterapp5_apiprovider/Providerclass/todo_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class Ui extends StatefulWidget {
//   const Ui({super.key});

//   @override
//   State<Ui> createState() => _UiState();
// }

// class _UiState extends State<Ui> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
//       Provider.of<todo_provider>(context, listen: false).getall();
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Instagram',
//                   style: TextStyle(
//                       fontFamily: 'Billabong',
//                       color: Colors.black,
//                       fontSize: 30),
//                 ),
//                 Row(
//                   children: [
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(Icons.live_tv),
//                       iconSize: 30,
//                     ),
//                     SizedBox(
//                       width: 15,
//                     ),
//                     IconButton(onPressed: () {}, icon: Icon(Icons.send)),
//                   ],
//                 )
//               ],
//             ),
//           ),

//           ////title bar

//           Container(
//             width: double.infinity,
//             height: 100,
//             color: Colors.red,
//             child: Consumer<todo_provider>(builder: (context, provider, child) {
//               return ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: provider.todos.length,
//                   itemBuilder: (context, index) {
//                     final todo = provider.todos[index];

//                     return Container(
//                       height: 60,
//                       width: 60,
//                       margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
//                       decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           boxShadow: [
//                             BoxShadow(blurRadius: 6, color: Colors.black)
//                           ]),
//                       child: CircleAvatar(
//                         child: ClipOval(
//                           child: Image(
//                             image: NetworkImage(todo.userimg),
//                             fit: BoxFit.cover,
//                             width: 60,
//                             height: 60,
//                           ),
//                         ),
//                       ),
//                     );
//                   });
//             }),
//           ),
//           ////////////STATUS BAR
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//             child: Container(
//               height: 560,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                 color: Colors.red,
//                 borderRadius: BorderRadius.circular(25),
//               ),
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.symmetric(vertical: 30),
//                     child: Column(
//                       children: [
//                         ListTile(
//                           leading: Container(
//                             margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
//                             decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 boxShadow: [
//                                   BoxShadow(blurRadius: 6, color: Colors.black)
//                                 ]),
//                             child: CircleAvatar(
//                               child: ClipOval(
//                                 child: Image(
//                                   image: NetworkImage(''),
//                                   fit: BoxFit.cover,
//                                   width: 60,
//                                   height: 60,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           title: Text(
//                             "Sam Martin",
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           subtitle: Text("3 min"),
//                           trailing: IconButton(
//                               onPressed: () {},
//                               icon: IconButton(
//                                 onPressed: () {},
//                                 icon: Icon(Icons.more_horiz),
//                                 color: Colors.black,
//                               )),
//                         ),

//                         ////post
//                         Container(
//                           height: 400,
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(25),
//                               boxShadow: [
//                                 BoxShadow(
//                                     color: Colors.black, offset: Offset(2, 1))
//                               ],
//                               image: DecorationImage(
//                                   image: NetworkImage(''),
//                                   fit: BoxFit.fitWidth)),
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:fluterapp5_apiprovider/Providerclass/todo_provider.dart';

// class Ui extends StatefulWidget {
//   const Ui({super.key});

//   @override
//   State<Ui> createState() => _UiState();
// }

// class _UiState extends State<Ui> {
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       Provider.of<todo_provider>(context, listen: false).getall();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           // Title Bar
//           Container(
//             height: 80, // Set a fixed height to avoid unbounded height issue
//             child: Consumer<todo_provider>(
//               builder: (context, value, child) {
//                 return ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: value.todos.length,
//                   itemBuilder: (context, index) {
//                     final todo = value.todos[index];
//                     print(todo.titles);
//                     return Container(
//                       width: 100,
//                       padding: EdgeInsets.symmetric(horizontal: 8.0),
//                       child: Center(
//                         // Center the text inside the container
//                         child: Text(
//                           todo.titles,
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 );
//               },
//             ),
//           ),

//           // Placeholder for other content
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Providerclass/todo_provider.dart'; // Corrected import path

class Ui extends StatefulWidget {
  const Ui({super.key});

  @override
  State<Ui> createState() => _UiState();
}

class _UiState extends State<Ui> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<todo_provider>(context, listen: false)
          .getall(); // Corrected class name
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Title Bar
          Container(
            height: 80, // Fixed height for the horizontal ListView
            child: Consumer<todo_provider>(
              builder: (context, todoProvider, child) {
                if (todoProvider.todos.isEmpty) {
                  // Show loading indicator if data is still loading
                  return Center(child: CircularProgressIndicator());
                }

                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: todoProvider.todos.length,
                  itemBuilder: (context, index) {
                    final todo = todoProvider.todos[index];

                    // Check if titles is not null
                    if (todo.titles == null || todo.titles.isEmpty) {
                      return Container(
                        width: 100,
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Center(
                          child: Text(
                            'No Title', // Default text for missing titles
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color:
                                  Colors.red, // Different color for visibility
                            ),
                          ),
                        ),
                      );
                    }

                    return Container(
                      width: 100,
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Center(
                        child: Text(
                          todo.titles, // Display the title
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),

          // Placeholder for other content
        ],
      ),
    );
  }
}
