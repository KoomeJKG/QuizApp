import 'package:flutter/material.dart';

class Result extends StatelessWidget {
final int resultScore;
final Function resetHandler;

Result(this.resultScore, this.resetHandler);
 String get resultPhase{
   String resultText;
      if(resultScore >= 7 ){
        resultText='Very High Score';

      }else if(resultScore >=5){
        resultText='Good Score';
      }else{
        resultText='Low Score';

      }
      return resultText;
     
 }
  @override
  Widget build(BuildContext context) {
    return Center(child: Column (children: [Text(resultPhase, 
    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold ),),

    FlatButton( child: Text('Reset Quiz', style: TextStyle(color: Colors.blue),), onPressed: resetHandler, 
       ),
     ]),
    );
  }
}