import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'SplashScreen.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _email = new TextEditingController();
  TextEditingController _name = new TextEditingController();
  TextEditingController _ph = new TextEditingController();
  var _count = 0;
  var date = "2022";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.withOpacity(0.7),
      body: SingleChildScrollView(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top:150.0,left: 10,right: 10),
            child: Column(
              children: [
                Text("ENTER YOUR INFORMATION ",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700
                  ),
                ),
                SizedBox(height: 50,),
                //--Name--
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.mail),
                        labelText: "Enter Name",
                        hintText: "Name"
                    ),
                    controller: _name,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.grey.shade300, Colors.white10],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 0.8],
                      tileMode: TileMode.clamp,
                    ),
                  ),
                ),
                //--Phone Number
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.mail),
                        labelText: "Enter Phone Number",
                        hintText: "Phone Number"),
                    controller: _ph,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.grey.shade300, Colors.white10],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 0.4],
                      tileMode: TileMode.clamp,
                    ),
                  ),
                ),
                //--Email--
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(Icons.mail),
                        labelText: "Enter Email",
                        hintText: "Email"),
                    controller: _email,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.grey.shade300, Colors.white10],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 0.4],
                      tileMode: TileMode.clamp,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 60,
                  width: 200,
                  child: TextButton(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.black.withBlue(50)
                      ),
                    ),
                    onPressed: (){
                      // FirebaseFirestore.instance.collection("Dreampath").doc(date).collection("Student").doc("S10").update({
                      //   "age":"GMB"
                      // });
                      FirebaseFirestore.instance.collection("Dreampath").doc(date).collection("Student").get().then((snapshots) => _count = snapshots.docs.length).then((value) {
                        _count = _count + 1;
                        FirebaseFirestore.instance.collection("Dreampath").doc(date).collection("Student").doc("S${_count}").set(
                            {
                              "name": "${_name.text.toString()}",
                              "email ID": "${_email.text.toString()}",
                              "Phone no.": "${_ph.text.toString()}",
                              // "Q2[0]":0,
                              // "Q2[1]":"",
                              // "Q2[2]":"",
                              // "Q2[3]":"",
                              // "Q2[4]":"",
                              // "Q2[5]":0,
                              // "Q2[6]":"",
                              // "Q2[7]":0,
                              // "Q3[0]":0,
                              // "Q3[1]":"",
                              // "Q3[2]":"",
                              // "Q3[3]":"",
                              // "Q3[4]":"",
                              // "Q3[5]":0,
                              // "Q3[6]":"",
                              // "Q3[7]":0,
                            });
                      }
                      );

                      Navigator.push(context,MaterialPageRoute(
                          builder: (context)=>SplashScreen()
                      ));
                    },
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [Colors.white, Colors.white10],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 0.4],
                      tileMode: TileMode.clamp,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

