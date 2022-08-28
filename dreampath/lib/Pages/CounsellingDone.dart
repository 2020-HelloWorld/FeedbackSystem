import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'SplashScreen.dart';

enum Rating{Useful, NotUseful, Partial}
enum YesNo{Yes,No}

class CounsellingDone extends StatefulWidget {
  final String username;
  final String password;
  const CounsellingDone({Key? key, required this.username, required this.password}) : super(key: key);

  @override
  State<CounsellingDone> createState() => _CounsellingDoneState();
}

class _CounsellingDoneState extends State<CounsellingDone> {
  Rating? useful;
  Rating? understand;
  Rating? enjoy;
  Rating? material;
  Rating? knowledge;
  Rating? clarity;

  YesNo? recommend;
  YesNo? reachout;
  YesNo? setGoal;

  TextEditingController _useful = new TextEditingController();
  TextEditingController _understand = new TextEditingController();
  TextEditingController _enjoy = new TextEditingController();
  TextEditingController _material = new TextEditingController();
  TextEditingController _knowledge = new TextEditingController();
  TextEditingController _clarity = new TextEditingController();
  TextEditingController _recommend = new TextEditingController();
  TextEditingController _reachout = new TextEditingController();
  TextEditingController _setGoal = new TextEditingController();

  TextEditingController _choices = new TextEditingController();
  TextEditingController _confident = new TextEditingController();
  TextEditingController _like = new TextEditingController();
  TextEditingController _notlike = new TextEditingController();
  TextEditingController _rate = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PLEASE FILL ALL THE FIELDS"),
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text(
                  "Was the program good and useful?",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20
                  ),
                ),
                ListTile(
                  leading: Radio(
                    groupValue: useful,
                    value: Rating.Useful,
                    onChanged: (Rating? value){
                      setState((){
                        this.useful = value;
                      });
                    },
                  ),
                  title: Text("Useful"),
                ),

                ListTile(
                  leading: Radio(
                    groupValue: useful,
                    value: Rating.NotUseful,
                    onChanged: (Rating? value){
                      setState((){
                        this.useful = value;
                      });
                    },
                  ),
                  title: Text("Not Useful"),
                ),
                ListTile(
                  leading: Radio(
                    groupValue: useful,
                    value: Rating.Partial,
                    onChanged: (Rating? value){
                      setState((){
                        this.useful = value;
                      });
                    },
                  ),
                  title: Text("Partial"),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.mail),
                      labelText: "Description",
                    ),
                    controller: _useful,
                  ),
                  height: 50,
                ),


                SizedBox(height: 50,),
                Text(
                  "Did you understand most of the topics/information shared?",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20
                  ),
                ),
                ListTile(
                  leading: Radio(
                    groupValue: understand,
                    value: Rating.Useful,
                    onChanged: (Rating? value){
                      setState((){
                        this.understand = value;
                      });
                    },
                  ),
                  title: Text("Useful"),
                ),

                ListTile(
                  leading: Radio(
                    groupValue: understand,
                    value: Rating.NotUseful,
                    onChanged: (Rating? value){
                      setState((){
                        this.understand = value;
                      });
                    },
                  ),
                  title: Text("Not Useful"),
                ),
                ListTile(
                  leading: Radio(
                    groupValue: understand,
                    value: Rating.Partial,
                    onChanged: (Rating? value){
                      setState((){
                        this.understand = value;
                      });
                    },
                  ),
                  title: Text("Partial"),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.mail),
                      labelText: "Description",
                    ),
                    controller: _understand,
                  ),
                  height: 50,
                ),

                SizedBox(height: 50,),
                Text(
                  "Did you enjoy the activities?",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20
                  ),
                ),
                ListTile(
                  leading: Radio(
                    groupValue: enjoy,
                    value: Rating.Useful,
                    onChanged: (Rating? value){
                      setState((){
                        this.enjoy = value;
                      });
                    },
                  ),
                  title: Text("Useful"),
                ),

                ListTile(
                  leading: Radio(
                    groupValue: enjoy,
                    value: Rating.NotUseful,
                    onChanged: (Rating? value){
                      setState((){
                        this.enjoy= value;
                      });
                    },
                  ),
                  title: Text("Not Useful"),
                ),
                ListTile(
                  leading: Radio(
                    groupValue: enjoy,
                    value: Rating.Partial,
                    onChanged: (Rating? value){
                      setState((){
                        this.enjoy = value;
                      });
                    },
                  ),
                  title: Text("Partial"),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.mail),
                      labelText: "Description",
                    ),
                    controller: _enjoy,
                  ),
                  height: 50,
                ),

                SizedBox(height: 50,),
                Text(
                  "Are the presentations/videos/work materials good to see, read and easy to understand?",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20
                  ),
                ),
                ListTile(
                  leading: Radio(
                    groupValue: material,
                    value: Rating.Useful,
                    onChanged: (Rating? value){
                      setState((){
                        this.material = value;
                      });
                    },
                  ),
                  title: Text("Useful"),
                ),

                ListTile(
                  leading: Radio(
                    groupValue: material,
                    value: Rating.NotUseful,
                    onChanged: (Rating? value){
                      setState((){
                        this.material= value;
                      });
                    },
                  ),
                  title: Text("Not Useful"),
                ),
                ListTile(
                  leading: Radio(
                    groupValue: material,
                    value: Rating.Partial,
                    onChanged: (Rating? value){
                      setState((){
                        this.material = value;
                      });
                    },
                  ),
                  title: Text("Partial"),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.mail),
                      labelText: "Description",
                    ),
                    controller: _material,
                  ),
                  height: 50,
                ),



                SizedBox(height: 50,),
                Text(
                  "Has your knowledge increased about different career paths / job opportunities / preparation?",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20
                  ),
                ),
                ListTile(
                  leading: Radio(
                    groupValue: knowledge,
                    value: Rating.Useful,
                    onChanged: (Rating? value){
                      setState((){
                        this.knowledge = value;
                      });
                    },
                  ),
                  title: Text("Useful"),
                ),

                ListTile(
                  leading: Radio(
                    groupValue: knowledge,
                    value: Rating.NotUseful,
                    onChanged: (Rating? value){
                      setState((){
                        this.knowledge= value;
                      });
                    },
                  ),
                  title: Text("Not Useful"),
                ),
                ListTile(
                  leading: Radio(
                    groupValue: knowledge,
                    value: Rating.Partial,
                    onChanged: (Rating? value){
                      setState((){
                        this.knowledge = value;
                      });
                    },
                  ),
                  title: Text("Partial"),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.mail),
                      labelText: "Description",
                    ),
                    controller: _knowledge,
                  ),
                  height: 50,
                ),


                SizedBox(height: 50,),
                Text(
                  "Do you have better clarity now on your next steps than before the program?",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20
                  ),
                ),
                ListTile(
                  leading: Radio(
                    groupValue: clarity,
                    value: Rating.Useful,
                    onChanged: (Rating? value){
                      setState((){
                        this.clarity = value;
                      });
                    },
                  ),
                  title: Text("Useful"),
                ),

                ListTile(
                  leading: Radio(
                    groupValue: clarity,
                    value: Rating.NotUseful,
                    onChanged: (Rating? value){
                      setState((){
                        this.clarity= value;
                      });
                    },
                  ),
                  title: Text("Not Useful"),
                ),
                ListTile(
                  leading: Radio(
                    groupValue: clarity,
                    value: Rating.Partial,
                    onChanged: (Rating? value){
                      setState((){
                        this.clarity = value;
                      });
                    },
                  ),
                  title: Text("Partial"),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.mail),
                      labelText: "Description",
                    ),
                    controller: _clarity,
                  ),
                  height: 50,
                ),

                SizedBox(height: 50,),
                Text(
                  "Do you recommend this program for your juniors / other friends too?",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20
                  ),
                ),
                ListTile(
                  leading: Radio(
                    groupValue: recommend,
                    value: YesNo.Yes,
                    onChanged: (YesNo? value){
                      setState((){
                        this.recommend = value;
                      });
                    },
                  ),
                  title: Text("Yes"),
                ),

                ListTile(
                  leading: Radio(
                    groupValue: recommend,
                    value: YesNo.No,
                    onChanged: (YesNo? value){
                      setState((){
                        this.recommend = value;
                      });
                    },
                  ),
                  title: Text("No"),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.mail),
                      labelText: "Description",
                    ),
                    controller: _recommend,
                  ),
                  height: 50,
                ),


                SizedBox(height: 50,),
                Text(
                  "Will you reach out to us if you have questions? ",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20
                  ),
                ),
                ListTile(
                  leading: Radio(
                    groupValue: reachout,
                    value: YesNo.Yes,
                    onChanged: (YesNo? value){
                      setState((){
                        this.reachout = value;
                      });
                    },
                  ),
                  title: Text("Yes"),
                ),

                ListTile(
                  leading: Radio(
                    groupValue:reachout,
                    value: YesNo.No,
                    onChanged: (YesNo? value){
                      setState((){
                        this.reachout = value;
                      });
                    },
                  ),
                  title: Text("No"),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.mail),
                      labelText: "Description",
                    ),
                    controller: _reachout,
                  ),
                  height: 50,
                ),


                SizedBox(height: 50,),
                Text(
                  "Is it easy for you to set your own goals now? Can you do it?",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20
                  ),
                ),
                ListTile(
                  leading: Radio(
                    groupValue: setGoal,
                    value: YesNo.Yes,
                    onChanged: (YesNo? value){
                      setState((){
                        this.setGoal = value;
                      });
                    },
                  ),
                  title: Text("Yes"),
                ),

                ListTile(
                  leading: Radio(
                    groupValue:setGoal,
                    value: YesNo.No,
                    onChanged: (YesNo? value){
                      setState((){
                        this.setGoal = value;
                      });
                    },
                  ),
                  title: Text("No"),
                ),

            Container(
              margin: EdgeInsets.all(10),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.mail),
                    labelText: "Description",
              ),
                controller: _setGoal,
              ),
              height: 50,
            ),

                Text(
                  "Has your career choices changed with new or more options now?",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.mail),
                      labelText: "Description",
                    ),
                    controller: _choices,
                  ),
                  height: 50,
                ),
                SizedBox(height: 50,),

                Text(
                  "Are you more aware and confident about your career choices as well as decision making now? ",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.mail),
                      labelText: "Description",
                    ),
                    controller: _confident,
                  ),
                  height: 50,
                ),
                SizedBox(height: 50,),

                Text(
                  "Which part of the session you enjoyed the most?",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.mail),
                      labelText: "Description",
                    ),
                    controller: _like,
                  ),
                  height: 50,
                ),
                SizedBox(height: 50,),

                Text(
                  "Which part of the session you enjoyed the least?",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.mail),
                      labelText: "Description",
                    ),
                    controller: _notlike,
                  ),
                  height: 50,
                ),
                SizedBox(height: 50,),

                Text(
                  "Overall rating for the workshop? Rating Scale 1-10",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(Icons.mail),
                      labelText: "Description",
                    ),
                    controller: _rate,
                  ),
                  height: 50,
                ),
                SizedBox(height: 50,),

                Container(
                  margin: EdgeInsets.only(top: 40),
                  height: 60,
                  width: 200,
                  child: FlatButton(
                    child: Text("Submit",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    onPressed: (){
                      FirebaseFirestore.instance.collection("Dreampath").doc("${widget.password}").collection("Student").doc("${widget.username}").set(
                          {
                            "Q1[0]":useful==Rating.Useful?1:useful==Rating.NotUseful?2:3,
                            "Q1[0].1":_useful.text.toString(),
                            "Q1[1]":understand==Rating.Useful?1:understand==Rating.NotUseful?2:3,
                            "Q1[1].1":_understand.text.toString(),
                            "Q1[2]":enjoy==Rating.Useful?1:understand==Rating.NotUseful?2:3,
                            "Q1[2].1":_enjoy.text.toString(),
                            "Q1[3]":material==Rating.Useful?1:understand==Rating.NotUseful?2:3,
                            "Q1[3].1":_material.text.toString(),
                            "Q1[4]":knowledge==Rating.Useful?1:understand==Rating.NotUseful?2:3,
                            "Q1[4].1":_knowledge.text.toString(),
                            "Q1[5]":clarity==Rating.Useful?1:understand==Rating.NotUseful?2:3,
                            "Q1[5].1":_clarity.text.toString(),
                            "Q1[6]":recommend==YesNo.Yes?1:2,
                            "Q1[6].1":_recommend.text.toString(),
                            "Q1[7]":reachout==YesNo.Yes?1:2,
                            "Q1[7].1":_reachout.text.toString(),
                            "Q1[8]":setGoal==YesNo.Yes?1:2,
                            "Q1[8].1":_setGoal.text.toString(),
                            "Q1[9]":_choices.text.toString(),
                            "Q1[10]":_confident.text.toString(),
                            "Q1[11]":_like.text.toString(),
                            "Q1[12]":_notlike.text.toString(),
                            "Q1[13]":int.parse(_rate.text.toString()),
                          });
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
                SizedBox(height: 50,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
