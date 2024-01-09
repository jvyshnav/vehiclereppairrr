import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Admin_User.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7F0FF),
      body: FutureBuilder(
        future: FirebaseFirestore.instance.collection("Usercollection").get(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text("Error:${snapshot.error}"),
            );
          }
          final user = snapshot.data?.docs ?? [];
          return ListView.builder(
            shrinkWrap: true,
            itemCount: user.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(
                  4,
                ).r,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return AdminUser(id: user[index].id);
                      },
                    ));
                  },
                  child: ListTile(
                    tileColor: Colors.white,
                    leading: Image.asset('assets/dp.png'),
                    title: Text(user[index]["username"]),
                    subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(user[index]["phone"]),
                          Text(user[index]["email"]),
                          Text(user[index]["password"]),
                        ]),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
