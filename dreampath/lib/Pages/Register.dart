import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent.withOpacity(0.7),
      body: SingleChildScrollView(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top:25.0,left: 10,right: 10),
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

