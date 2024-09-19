import 'package:flutter/material.dart';
import 'package:flutterapp4_providerapi/Providerf/todo1_provider.dart';
import 'package:provider/provider.dart';

class Ui extends StatefulWidget {
  const Ui({super.key});

  @override
  State<Ui> createState() => _UiState();
}

class _UiState extends State<Ui> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<todo1_provider>(context, listen: false).getall();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(scrollDirection: Axis.vertical, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Instagram",
                style: TextStyle(
                    fontSize: 30, fontFamily: 'Billabong', color: Colors.black),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.live_tv),
                    iconSize: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                ],
              ),
            ],
          ),
        ),
        Container(
            width: double.infinity,
            height: 100,
            color: Colors.red,
            child: Consumer<todo1_provider>(
              builder: (context, provider, child) {
                return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: provider.todos.length,
                    itemBuilder: (context, index) {
                      final todo = provider.todos[index];
                      if (index == 0) {
                        return SizedBox(
                          width: 10,
                        );
                      }
                      return Container(
                        margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        decoration:
                            BoxDecoration(shape: BoxShape.circle, boxShadow: [
                          BoxShadow(
                            color: Colors.black45,
                            blurRadius: 6,
                          )
                        ]),
                        child: CircleAvatar(
                          child: ClipOval(
                            child: Image(
                              image: NetworkImage(todo.imgurl),
                              fit: BoxFit.cover,
                              width: 60,
                              height: 60,
                            ),
                          ),
                        ),
                      );
                    });
              },
            )), //STATUSBAR

        ///////post//////
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Container(
            height: 560,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(25)),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Container(
                          decoration:
                              BoxDecoration(shape: BoxShape.circle, boxShadow: [
                            BoxShadow(
                              color: Colors.black45,
                              blurRadius: 6,
                            )
                          ]),
                          child: CircleAvatar(
                            child: ClipOval(
                              child: Image(
                                image: AssetImage(
                                    'assets/images/pexels-bertellifotografia-3792581.jpg'),
                                fit: BoxFit.cover,
                                width: 60,
                                height: 60,
                              ),
                            ),
                          ),
                        ),
                        title: Text(
                          "Sam Martin",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("3 min"),
                        trailing: IconButton(
                          onPressed: () => print('here'),
                          icon: Icon(Icons.more_horiz),
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        height: 400,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black, offset: Offset(2, 1))
                            ],
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/pexels-bertellifotografia-3792581.jpg"),
                                fit: BoxFit.fitWidth)),
                      ),
                    ],
                  ), //user profile
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:flutterapp4_providerapi/Providerf/todo1_provider.dart';
// import 'package:provider/provider.dart';

// class Ui extends StatefulWidget {
//   const Ui({super.key});

//   @override
//   State<Ui> createState() => _UiState();
// }

// class _UiState extends State<Ui> {
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
//       Provider.of<todo1_provider>(context, listen: false).getall();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(scrollDirection: Axis.vertical, children: [
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Text(
//                 "Instagram",
//                 style: TextStyle(
//                     fontSize: 30, fontFamily: 'Billabong', color: Colors.black),
//               ),
//               Row(
//                 children: [
//                   IconButton(
//                     onPressed: () {},
//                     icon: Icon(Icons.live_tv),
//                     iconSize: 30,
//                   ),
//                   SizedBox(
//                     width: 15,
//                   ),
//                   IconButton(onPressed: () {}, icon: Icon(Icons.send)),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         Container(
//             width: double.infinity,
//             height: 100,
//             color: Colors.red,
//             child: Consumer<todo1_provider>(
//               builder: (context, provider, child) {
//                 return ListView.builder(
//                     scrollDirection: Axis.horizontal,
//                     itemCount: provider.todos.length,
//                     itemBuilder: (context, index) {
//                       final todo = provider.todos[index];
//                       if (index == 0) {
//                         return SizedBox(
//                           width: 10,
//                         );
//                       }
//                       return Container(
//                         margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
//                         decoration:
//                             BoxDecoration(shape: BoxShape.circle, boxShadow: [
//                           BoxShadow(
//                             color: Colors.black45,
//                             blurRadius: 6,
//                           )
//                         ]),
//                         child: CircleAvatar(
//                           child: ClipOval(
//                             child: Image(
//                               image: NetworkImage(todo.imgurl),
//                               fit: BoxFit.cover,
//                               width: 60,
//                               height: 60,
//                             ),
//                           ),
//                         ),
//                       );
//                     });
//               },
//             )), //STATUSBAR

//         ///////post//////
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//           child: Container(
//             height: 560,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 color: Colors.red, borderRadius: BorderRadius.circular(25)),
//             child: Column(
//               children: [
//                 Padding(
//                   padding: EdgeInsets.symmetric(vertical: 30),
//                   child: Column(
//                     children: [
//                       ListTile(
//                         leading: Container(
//                           decoration:
//                               BoxDecoration(shape: BoxShape.circle, boxShadow: [
//                             BoxShadow(
//                               color: Colors.black45,
//                               blurRadius: 6,
//                             )
//                           ]),
//                           child: CircleAvatar(
//                             child: ClipOval(
//                               child: Image(
//                                 image: AssetImage(
//                                     'assets/images/pexels-bertellifotografia-3792581.jpg'),
//                                 fit: BoxFit.cover,
//                                 width: 60,
//                                 height: 60,
//                               ),
//                             ),
//                           ),
//                         ),
//                         title: Text(
//                           "Sam Martin",
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         subtitle: Text("3 min"),
//                         trailing: IconButton(
//                           onPressed: () => print('here'),
//                           icon: Icon(Icons.more_horiz),
//                           color: Colors.black,
//                         ),
//                       ),
//                       Container(
//                         height: 400,
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(25),
//                             boxShadow: [
//                               BoxShadow(
//                                   color: Colors.black, offset: Offset(2, 1))
//                             ],
//                             image: DecorationImage(
//                                 image: AssetImage(
//                                     "assets/images/pexels-bertellifotografia-3792581.jpg"),
//                                 fit: BoxFit.fitWidth)),
//                       ),
//                     ],
//                   ), //user profile
//                 )
//               ],
//             ),
//           ),
//         )
//       ]),
//     );
//   }
// }




