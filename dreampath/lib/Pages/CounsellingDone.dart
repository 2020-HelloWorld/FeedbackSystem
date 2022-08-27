import 'package:flutter/material.dart';

enum Rating{Useful, NotUseful, Partial}

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

  bool? recommend;
  bool? reachout;
  bool? setGoal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Expanded(
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
            ],
          ),
        ),
      ),
    );
  }
}
