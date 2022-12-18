
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'drugs.dart';

class New_drug extends StatelessWidget {
  dynamic name2;
  dynamic imageurl2;
  String desctription2;
  
  New_drug({super.key, required this.name2,
                       required this.imageurl2,
                       required this.desctription2,
                       });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black,),
        splashRadius: 2,
        onPressed: (() {
          Navigator.pop(context);
        })),
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(name2??'News',style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Column(children: 
        [
          Container(
            alignment: Alignment.centerLeft,
            child: Image.network(imageurl2,width: 350,)),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 15),
            alignment: Alignment.topLeft,
            child: Text(name2, style: TextStyle(fontSize: 25),)),
          
          Container(
            padding: EdgeInsets.all(15),
            child: Text(desctription2, style: TextStyle(fontSize: 20),)),
      
        ]
          ),
      )
      
    );
  }
}