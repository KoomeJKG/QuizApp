import 'package:flutter/material.dart';


import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

    State<StatefulWidget> createState(){
      return MyAppState();
    }
}

class MyAppState extends State<MyApp> {
 
 var _questionIndex = 0;
 var _totalScore = 0;

void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }
  void _answerQuestion( int Score){

    setState(() {_questionIndex +=1;});
    _totalScore += Score;
    print(_questionIndex);

  }

  


  @override
  Widget build(BuildContext context){
      var _question = [
        {'Qname':'How do you rate HP Machines ratings', 
        'Qanswer':[{'Text':'Very High', 'Score':3},
                   {'Text':'Average', 'Score':2}, 
                   {'Text':'Below Average','Score':1}],
      },
      {'Qname':'How do you like programming ?', 
        'Qanswer':[{'Text':'Very High', 'Score':3},
                   {'Text':'Average', 'Score':2}, 
                   {'Text':'Below Average','Score':1}],
      },
      {'Qname':'What\'s Your Favourite Color', 
        'Qanswer':[{'Text':'White', 'Score':3},
                   {'Text':'Red', 'Score':2}, 
                   {'Text':'Yellow','Score':1}],
      },
      ];

             return MaterialApp(home: Scaffold(
             appBar: AppBar(title: Text('The App')),
             body: _questionIndex < _question.length ? 
             Quiz(answerQuestion:_answerQuestion, questionIndex:_questionIndex,question:_question ) 
             : Result(_totalScore, _resetQuiz),
    )

    );
  }

}