import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Mechsignup extends StatefulWidget {
  const Mechsignup({super.key});

  @override
  State<Mechsignup> createState() => _MechsignupState();
}

class _MechsignupState extends State<Mechsignup> {
  @override
  Widget build(BuildContext context) {
    var Uusername = TextEditingController();
    var Pphonenumber = TextEditingController();
    var Eemail = TextEditingController();
    var Eexperience = TextEditingController();
    var SShopname = TextEditingController();
    var Ppassword = TextEditingController();
    Mechsign() {
      FirebaseFirestore.instance.collection('Mechcollection').add({
        "uusername": Uusername.text,
        "ppassword": Ppassword.text,
        "eemail": Eemail.text,
        "eexperience": Eemail.text,
        "sshopname": SShopname.text,
        "ppassword": Ppassword.text,
        "status": 0,
      }).then((value) {
        print("mech sign up successfull");
      });
    }

    return Scaffold(
        backgroundColor: Color(0xffCFE2FF),
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50.h),
              child: SafeArea(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 140.h,
                      width: 140.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/tow 3.png"),
                              fit: BoxFit.fill)),
                    )
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(
                    20,
                  ),
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 50.w, bottom: 10.h),
              child: Row(
                children: [
                  Text(
                    "Enter username",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 290.w,
                  height: 50.h,
                  child: TextFormField(
                      controller: Uusername,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "  Username",
                          hintStyle: TextStyle(color: Colors.grey))),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.sp),
                      color: Colors.white),
                )
              ],
            ),
            // phone
            Padding(
              padding: EdgeInsets.only(
                left: 50.w,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Enter Phone number",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 290.w,
                  height: 50.h,
                  child: TextFormField(
                      controller: Pphonenumber,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "  Phone number",
                          hintStyle: TextStyle(color: Colors.grey))),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.sp),
                      color: Colors.white),
                )
              ],
            ),
            //email
            Padding(
              padding: EdgeInsets.only(
                left: 50.w,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Enter Your email",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 290.w,
                  height: 50.h,
                  child: TextFormField(
                      controller: Eemail,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "  Enter email",
                          hintStyle: TextStyle(color: Colors.grey))),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.sp),
                      color: Colors.white),
                )
              ],
            ),
            //expiriance
            Padding(
              padding: EdgeInsets.only(
                left: 50.w,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Enter your work experience",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 290.w,
                  height: 50.h,
                  child: TextFormField(
                      controller: Eexperience,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "  Enter your experience",
                          hintStyle: TextStyle(color: Colors.grey))),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.sp),
                      color: Colors.white),
                )
              ],
            ),
            //workshopname
            Padding(
              padding: EdgeInsets.only(
                left: 50.w,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Enter Workshop name",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 290.w,
                  height: 50.h,
                  child: TextFormField(
                      controller: SShopname,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "  Enter your shop name",
                          hintStyle: TextStyle(color: Colors.grey))),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.sp),
                      color: Colors.white),
                )
              ],
            ),
            //pass
            Padding(
              padding: EdgeInsets.only(
                left: 50.w,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Enter your Password",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 290.w,
                  height: 50.h,
                  child: TextFormField(
                      controller: Ppassword,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "  Enter your Password",
                          hintStyle: TextStyle(color: Colors.grey))),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.sp),
                      color: Colors.white),
                )
              ],
            ),
            // login
            Padding(
              padding: EdgeInsets.only(top: 50.h, bottom: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 190.w,
                    height: 50.h,
                    child: TextButton(
                        onPressed: () {
                          Mechsign();
                        },
                        child: Text(
                          "LOGIN",
                          style: TextStyle(color: Colors.white),
                        )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.sp),
                        color: Color(0xff2357D9)),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
