import 'package:flutter/material.dart';

import './questions.dart';
import './Answer.dart';


class Quiz extends StatelessWidget {

final List<Map<String, Object>> question;
final int questionIndex;
final Function answerQuestion;



Quiz({@required this.question, @required this.answerQuestion, @required this.questionIndex});
 

  @override
  Widget build(BuildContext context) {
    return Column( children: [
         Questions(question[questionIndex]['Qname']),
          ...(question[questionIndex]['Qanswer'] as List<Map<String, Object>>)
          .map((answer){return Answer(() => answerQuestion(answer['Score']), answer['Text']);
          }).toList()
       ] 
      
    );
  }
}