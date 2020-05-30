import 'package:flutter/material.dart';


class Questions extends StatelessWidget {

  final String questionName;

  Questions(this.questionName);
  @override 
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child:    
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: Text(questionName,style: TextStyle(fontSize:26,
        fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
     ),
      
    );
  }
}