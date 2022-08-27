import 'package:flutter/material.dart';

enum Rating{Useful, NotUseful, Partial}
enum YesNo{Yes,No}

class CounsellingDone extends StatefulWidget {
  const CounsellingDone({Key? key}) : super(key: key);

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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    value: YesNo.Yes,
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
                    value: YesNo.Yes,
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
                    value: YesNo.Yes,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
