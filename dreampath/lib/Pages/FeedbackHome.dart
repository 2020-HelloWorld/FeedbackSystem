import 'package:dreampath/Pages/CounsellingDone.dart';
import 'package:flutter/material.dart';

import 'SplashScreen.dart';

class FeedbackHome extends StatelessWidget {
  const FeedbackHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(130.0),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 40),
                  height: 60,
                  width: 200,
                  child: FlatButton(
                    child: Text("Just Completed Counselling",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context)=>CounsellingDone()
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


                Container(
                  margin: EdgeInsets.only(top: 40),
                  height: 60,
                  width: 200,
                  child: FlatButton(
                    child: Text("Completed X",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context)=>SplashScreen()
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

                Container(
                  margin: EdgeInsets.only(top: 40),
                  height: 60,
                  width: 200,
                  child: FlatButton(
                    child: Text("Completed XII",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(
                          builder: (context)=>SplashScreen()
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
