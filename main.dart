import 'dart:math';
import 'dart:io';


double prompt(String promptText){
  print(promptText);
  double myNum = double.parse(stdin.readLineSync()!);
  return myNum;
}




class MathQuestion{
  
  late String question;
  late double answer;
  
  MathQuestion(String aQuestion, double aAnswer){
    
  this.question = aQuestion;
  this.answer = aAnswer; 
  }
  
}



void main() {
  
  List <MathQuestion> questions = [
    
    MathQuestion('3 + 5', 8.0),
    MathQuestion('10 - 7', 3.0),
    MathQuestion('100 * 9', 900.0)
    
  ];

  int score =0;
  
  for(MathQuestion math in questions){
    double userAnswer = prompt(math.question);

    if(userAnswer == math.answer){
      score++;
    }
      
  }
  
  print('you got ${score} / ${questions.length}');

  }