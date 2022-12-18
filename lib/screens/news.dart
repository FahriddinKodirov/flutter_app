import 'package:flutter_application_1/screens/articles.dart';

class News{
  String? status;
  num? totalResults;
  List<Article>? articles;

  News({required this.status,
        required this.totalResults,
        required this.articles,});

 factory News.fromjson(Map<String, dynamic> json){
  return News(status: json['status']??'', 
       totalResults: json['totalResults']??'', 
       articles: (json['articles'] as List).map((article) => 
       Article.fromjson(article)).toList());
 }

  
}