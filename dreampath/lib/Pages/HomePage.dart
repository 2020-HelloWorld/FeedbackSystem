
import 'package:dreampath/Pages/FeedbackHome.dart';
import 'package:dreampath/Pages/Register.dart';
import 'package:dreampath/Pages/SplashScreen.dart';
import 'package:dreampath/Pages/login.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      body: SingleChildScrollView(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 75.0,top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //--REGISTRATION BUTTON--
                Text(
                  "Are you new to the counselling?\nPress the button below to register",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 40),
                  height: 60,
                  width: 200,
                  child: FlatButton(
                    child: Text("Register",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context)=>Register()
                      ));
                    },
                  ),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple.shade700.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(4,4),
                            spreadRadius: 3,
                            blurRadius: 5
                        )
                      ]
                  ),
                ),

                //--FEEDBACK BUTTON--
                SizedBox(height: 100,),
                Text(
                  "Are you done with counselling?\nPress the button below to give feedback",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20
                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 40),
                  height: 60,
                  width: 200,
                  child: FlatButton(
                    child: Text("Feedback",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context)=>SignIn()
                      ));
                    },
                  ),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple.shade700.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(4,4),
                            spreadRadius: 3,
                            blurRadius: 5
                        )
                      ]
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

