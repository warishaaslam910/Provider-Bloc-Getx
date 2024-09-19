import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Realtimecrud extends StatefulWidget {
  const Realtimecrud({super.key});

  @override
  State<Realtimecrud> createState() => _RealtimecrudState();
}

class _RealtimecrudState extends State<Realtimecrud> {
  @override
  DatabaseReference dref = FirebaseDatabase.instance.ref('Appusers');
  final key = FirebaseAuth.instance.currentUser!.uid;
  final getdata = FirebaseDatabase.instance
      .ref('Appusers')
      .child(FirebaseAuth.instance.currentUser!.uid)
      .onValue;
  var searchcont = TextEditingController();
  var namecont = TextEditingController();
  var taskcont = TextEditingController();
  showformodel(context, int? postid) {
    namecont.clear();
    taskcont.clear;
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.fromLTRB(
                32, 32, 32, MediaQuery.viewInsetsOf(context).bottom),
            child: Column(
              children: [
                TextField(
                  controller: namecont,
                  decoration: InputDecoration(hintText: 'Enter name'),
                ),
                SizedBox(
                  height: 12,
                ),
                TextField(
                  controller: taskcont,
                  decoration: InputDecoration(hintText: 'enter task'),
                ),
                SizedBox(
                  height: 22,
                ),
                ElevatedButton(
                    onPressed: () {
                      int id = 0;
                      id++;
                      if (postid == null) {
                        dref.child(key).child("$id").set({
                          'id': id,
                          'name': namecont.text,
                          'task': taskcont.text,
                        }).then((value) => print('############## uploaded'));
                      } else {
                        dref.child(key).child("$postid").update({
                          'id': id,
                          'name': namecont.text,
                          'task': taskcont.text,
                        }).then((value) => print('############## now updated'));
                      }
                      Navigator.pop(context);
                    },
                    child: postid == null ? Text("Submit") : Text('Update')),
              ],
            ),
          );
        });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showformodel(context, null);
        },
        child: Text('ENTER'),
      ),
      body: Expanded(
          child: StreamBuilder(
              stream: getdata,
              builder: (context, AsyncSnapshot<DatabaseEvent> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else {
                  Map map = snapshot.data!.snapshot.children.length as dynamic;
                  List<dynamic> list = map.values.toList();

                  return ListView.builder(
                      itemCount: snapshot.data!.snapshot.children.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(list[index]['name']),
                          trailing: PopupMenuButton(itemBuilder: (context) {
                            return [
                              PopupMenuItem(
                                  value: 1,
                                  child: ListTile(
                                    leading: IconButton(
                                        onPressed: () {
                                          dref.child(key).child('id').remove();
                                          Navigator.pop(context);
                                        },
                                        icon: Icon(Icons.delete)),
                                  )),
                              PopupMenuItem(
                                  value: 2,
                                  child: ListTile(
                                    leading: IconButton(
                                        onPressed: () {
                                          final updateid =
                                              list[index]['id'].toString();
                                          showformodel(
                                              context, int.parse(updateid));
                                        },
                                        icon: Icon(Icons.update)),
                                  ))
                            ];
                          }),
                        );
                      });
                }
              })),
    );
  }
}
