import 'package:flutter_application_1/screens/tictok/jokes.dart';

class Word{
  bool? error;
  num? amount;
  List<Jokes>? jokes;

  Word({required this.error,
        required this.amount,
        required this.jokes,});

  factory Word.fromjson(Map<dynamic, dynamic>json){
    return Word(error: json['error']?? false, 
                amount: json['amount']?? 0, 
                jokes: (json['jokes'] as List).map((e) => Jokes.fromjson(e)).toList());
  }
}