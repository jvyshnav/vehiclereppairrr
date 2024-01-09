import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:vehicle_project/admin/Admin_Mechanic.dart';

class MechanicalList extends StatefulWidget {
  const MechanicalList({super.key});

  @override
  State<MechanicalList> createState() => _MechanicalListState();
}

class _MechanicalListState extends State<MechanicalList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE7F0FF),
      body: FutureBuilder(
        future: FirebaseFirestore.instance.collection("Mechcollection").get(),
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
          final mechsign = snapshot.data?.docs ?? [];
          return ListView.builder(
            shrinkWrap: true,
            itemCount: mechsign.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(
                  4,
                ).r,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return AdminMechanic(id: mechsign[index].id);
                      },
                    ));
                  },
                  child: ListTile(
                    tileColor: Colors.white,
                    leading: Image.asset('assets/dp.png'),
                    title: Text(mechsign[index]["uusername"]),
                    subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(mechsign[index]["ppassword"]),
                          Text(mechsign[index]["eemail"]),
                          Text(mechsign[index]["eexperience"]),
                          Text(mechsign[index]["sshopname"]),
                          Text(mechsign[index]["ppassword"]),
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
