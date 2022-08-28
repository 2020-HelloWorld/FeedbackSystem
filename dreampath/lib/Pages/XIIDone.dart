import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'SplashScreen.dart';

enum YesNo{Yes, No}
enum Course{Engineering, Medical,OtherScience, Commerce, PublicService, Art}

class XIIDone extends StatefulWidget {
  final String username;
  final String password;

  const XIIDone({Key? key, required this.username, required this.password}) : super(key: key);

  @override
  State<XIIDone> createState() => _XIIDoneState();
}

class _XIIDoneState extends State<XIIDone> {
  Course? course;

  YesNo? attend;
  YesNo? help;
  YesNo? resource;

  TextEditingController _wyd = new TextEditingController();
  TextEditingController _whyCourse = new TextEditingController();
  TextEditingController _howCourse = new TextEditingController();
  TextEditingController _howHelp = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PLEASE FILL ALL THE FIELDS"),
      ),
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            children: [
              Text(
                "Did they attend Career Guidance workshop by DreamPath Foundation?",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20
                ),
              ),
              ListTile(
                leading: Radio(
                  groupValue: attend,
                  value: YesNo.Yes,
                  onChanged: (YesNo? value){
                    setState((){
                      this.attend = value;
                    });
                  },
                ),
                title: Text("Yes"),
              ),

              ListTile(
                leading: Radio(
                  groupValue:attend,
                  value: YesNo.No,
                  onChanged: (YesNo? value){
                    setState((){
                      this.attend = value;
                    });
                  },
                ),
                title: Text("No"),
              ),

              SizedBox(height: 50,),

              Text(
                "What is the student doing now(after 12th)?",
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
                  controller: _wyd,
                ),
                height: 50,
              ),
              SizedBox(height: 50,),

              Text(
                "Which course has student joined after 12th?",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20
                ),
              ),
              ListTile(
                leading: Radio(
                  groupValue: course,
                  value: Course.Engineering,
                  onChanged: (Course? value){
                    setState((){
                      this.course = value;
                    });
                  },
                ),
                title: Text("Engineering"),
              ),

              ListTile(
                leading: Radio(
                  groupValue: course,
                  value: Course.Medical,
                  onChanged: (Course? value){
                    setState((){
                      this.course = value;
                    });
                  },
                ),
                title: Text("Medical"),
              ),
              ListTile(
                leading: Radio(
                  groupValue: course,
                  value: Course.OtherScience,
                  onChanged: (Course? value){
                    setState((){
                      this.course = value;
                    });
                  },
                ),
                title: Text("Other Science"),
              ),
              ListTile(
                leading: Radio(
                  groupValue: course,
                  value: Course.Commerce,
                  onChanged: (Course? value){
                    setState((){
                      this.course = value;
                    });
                  },
                ),
                title: Text("Commerce"),
              ),
              ListTile(
                leading: Radio(
                  groupValue: course,
                  value: Course.PublicService,
                  onChanged: (Course? value){
                    setState((){
                      this.course = value;
                    });
                  },
                ),
                title: Text("Public Service"),
              ),
              ListTile(
                leading: Radio(
                  groupValue: course,
                  value: Course.Art,
                  onChanged: (Course? value){
                    setState((){
                      this.course = value;
                    });
                  },
                ),
                title: Text("Art"),
              ),
              SizedBox(height: 50,),


              Text(
                "Why did he/she choose to join the above?",
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
                  controller: _whyCourse,
                ),
                height: 50,
              ),
              SizedBox(height: 50,),

              Text(
                "How did he/she decide (eg parents decided, friends were joining that college, school teacher's advice, self decision with parents etc?",
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
                  controller: _howCourse,
                ),
                height: 50,
              ),
              SizedBox(height: 50,),


              Text(
                "Did the DreamPath workshop help him/her with the choice?",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20
                ),
              ),
              ListTile(
                leading: Radio(
                  groupValue: help,
                  value: YesNo.Yes,
                  onChanged: (YesNo? value){
                    setState((){
                      this.help = value;
                    });
                  },
                ),
                title: Text("Yes"),
              ),

              ListTile(
                leading: Radio(
                  groupValue:help,
                  value: YesNo.No,
                  onChanged: (YesNo? value){
                    setState((){
                      this.help = value;
                    });
                  },
                ),
                title: Text("No"),
              ),
              SizedBox(height: 50,),

              Text(
                "If so, what way?",
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
                  controller: _howHelp,
                ),
                height: 50,
              ),
              SizedBox(height: 50,),

              Text(
                "Was the workshop useful and other resources from DreamPath useful?",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20
                ),
              ),
              ListTile(
                leading: Radio(
                  groupValue: resource,
                  value: YesNo.Yes,
                  onChanged: (YesNo? value){
                    setState((){
                      this.resource = value;
                    });
                  },
                ),
                title: Text("Yes"),
              ),

              ListTile(
                leading: Radio(
                  groupValue:resource,
                  value: YesNo.No,
                  onChanged: (YesNo? value){
                    setState((){
                      this.resource = value;
                    });
                  },
                ),
                title: Text("No"),
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
                          "Q3[0]":attend==YesNo.Yes?1:2,
                          "Q3[1]":_wyd.text.toString(),
                          "Q3[2]":course==Course.Engineering?"Engineering":course==Course.Commerce?"Commerce":course==Course.OtherScience?"Other Science related field":course==Course.PublicService?"Civil Service":course==Course.Art?"Arts":"Medical",
                          "Q3[3]":_whyCourse.text.toString(),
                          "Q3[4]":_howCourse.text.toString(),
                          "Q3[5]":help==YesNo.Yes?1:2,
                          "Q3[6]":_howHelp.text.toString(),
                          "Q3[7]":resource==YesNo.Yes?1:2
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
    );
  }
}
