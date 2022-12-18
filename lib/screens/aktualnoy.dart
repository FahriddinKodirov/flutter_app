import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/articles.dart';
import 'package:flutter_application_1/screens/news.dart';
import 'package:flutter_application_1/utils/my_image.dart';
import 'package:http/http.dart' as http;

class Aktualnoy extends StatefulWidget {
  const Aktualnoy({super.key});

  @override
  State<Aktualnoy> createState() => _AktualnoyState();
}

class _AktualnoyState extends State<Aktualnoy> {
   Future<News>? news;
  Future<News?> getNews() async {
    String apiKey = "1b1677681e3f4c6980f50921844ba0e0";
    String url = "https://newsapi.org/v2/everything"
        "?q=tesla"
        "&from=2022-09-17"
        "&sortBy=publishedAt"
        "&apiKey=$apiKey";
     
   
   var response = await http.get(Uri.parse(url));

   if(response.statusCode == 200){
    var json = jsonDecode(response.body) as Map<String, dynamic>;
    return News.fromjson(json);

   }
   return null;
  }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Colors.black,
      body: SafeArea(
        child: FutureBuilder(
          builder: (BuildContext context, AsyncSnapshot<News?> snapshot){
            if(snapshot.connectionState == ConnectionState.waiting){
              return Center(child: CircularProgressIndicator());
            }
            if(snapshot.hasData){
              News? news =snapshot.data;
              return newsListWidget();
            }
             if (snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()));
            }
             return Container(
            child: Center(
              child: Text(
                "Nimdir xatolik bor",
                style: TextStyle(fontSize: 24),
              ),
            ),
          );
          }
           
        
        
      ))
    );
  
  }
  Widget newsListWidget() {
    return ListView.builder(
          itemCount: 100,
          itemBuilder: (BuildContext context, int index){
            return Container(
              margin: EdgeInsets.only(right: 18,left: 18,top: 14),
              height: MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width *0.92,
              decoration: BoxDecoration(
              color: Color(0xFF252525).withOpacity(0.8),
              borderRadius: BorderRadius.circular(12)
              ),
              
              child: Column(children: [
                Row(children: [
                  Container(
                    margin: EdgeInsets.only(top: 25,left: 20),
                    child: Text('gdffffffgggggrffffffffffffffffffff\ngdffffffgggggrffffffffffffffffffff\nergegergergerggger',style: 
                    TextStyle(color: Colors.white))
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25,left: 40),
                    child: Image.asset(MyImages.Image_foto2,width: 100,),
                  )
                ],),
                 Row(children: [
                  Container(
                    margin: EdgeInsets.only(top: 45,left: 20),
                    child: Text('gdffffffgggggrffff',style: 
                    TextStyle(color: Colors.white)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40,left: 45),
                    child: Text('ergergergerg',style: 
                    TextStyle(color: Colors.white)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40,left: 20),
                    child: Icon(Icons.share, color: Colors.white),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40,left: 5),
                    child: Icon(Icons.star_border, color: Colors.white),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40,left: 5),
                    child: Icon(Icons.book_outlined, color: Colors.white),
                  ),
                ],),
              ]),
            );
         
         
          });
  }
}

  