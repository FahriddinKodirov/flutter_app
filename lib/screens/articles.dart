import 'package:flutter_application_1/screens/sourse.dart';

class Article{
  Sourse sourse;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  Article({required this.sourse,
            required this.author,
            required this.title,
            required this.description,
            required this.url,
            required this.urlToImage,
            required this.publishedAt,
            required this.content,});
  factory Article.fromjson(Map<String, dynamic>json){
    return Article(sourse: Sourse.fromjson(json['sourse']), 
                    author: json['author']??'', 
                    title: json['title']??'',  
                    description: json['description']??'', 
                    url: json['url']??'', 
                    urlToImage: json['urlToImage']??'', 
                    publishedAt: json['publishedAt']??'', 
                    content: json['content']??'');
  }
            
            
}