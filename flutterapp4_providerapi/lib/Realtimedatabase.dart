import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class Realtimedatabase extends StatefulWidget {
  const Realtimedatabase({super.key});

  @override
  State<Realtimedatabase> createState() => _RealtimedatabaseState();
}

class _RealtimedatabaseState extends State<Realtimedatabase> {
  DatabaseReference dref = FirebaseDatabase.instance.ref("APPUSERS");
  final key = FirebaseAuth.instance.currentUser!.uid;
  final getdata = FirebaseDatabase.instance
      .ref("APPUSERS")
      .child(FirebaseAuth.instance.currentUser!.uid)
      .onValue;
  var titlecont = TextEditingController();
  var desccont = TextEditingController();
  var searchcont = TextEditingController();

  showformodel(context, int? postid) {
    titlecont.clear();
    desccont.clear();
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.fromLTRB(
                32, 32, 32, MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              children: [
                TextField(
                  controller: titlecont,
                  decoration: InputDecoration(hintText: 'Enter title'),
                ),
                TextField(
                  controller: desccont,
                  decoration: InputDecoration(hintText: 'Enter desc'),
                ),
                SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                    onPressed: () {
                      int id = 0;
                      if (postid != null) {
                        id++;
                        dref.child(key).child("$id").set({
                          "id": id,
                          "title": titlecont.text,
                          "description": desccont.text,
                        }).then((value) =>
                            {print('*************UPLOADED ***********')});
                      } else {
                        dref.child(key).child("$id").update({
                          "id": id,
                          "title": titlecont.text,
                          "description": desccont.text,
                        }).then((value) =>
                            {print('*************UPDATED ***********')});
                      }
                    },
                    child: postid == null ? Text("Update") : Text("Submit")),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        showformodel(context, null);
      }),
      body: Column(
        children: [
          Expanded(
              child: StreamBuilder(
                  stream: getdata,
                  builder: (context, AsyncSnapshot<DatabaseEvent> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    } else {
                      Map map =
                          snapshot.data!.snapshot.children.length as dynamic;

                      List<dynamic> list = map.values.toList();
                      return ListView.builder(
                          itemCount: snapshot.data!.snapshot.children.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(list[index]["id"]),
                              subtitle: Text(list[index]["title"]),
                              trailing: PopupMenuButton(itemBuilder: (context) {
                                return [
                                  PopupMenuItem(
                                      value: 1,
                                      child: ListTile(
                                        leading: Icon(Icons.delete),
                                        onTap: () {
                                          dref.child(key).child('id').remove();
                                          Navigator.pop(context);
                                        },
                                      )),
                                  PopupMenuItem(
                                      value: 2,
                                      child: ListTile(
                                        leading: Icon(Icons.edit),
                                        onTap: () {
                                          final updateid =
                                              list[index]['id'].toString();

                                          showformodel(
                                              context, int.parse(updateid));
                                        },
                                      ))
                                ];
                              }),
                            );
                          });
                    }
                  }))
        ],
      ),
    );
  }
}
