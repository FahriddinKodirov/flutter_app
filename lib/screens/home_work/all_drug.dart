


import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/home_work/add.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'drugs.dart';

class AllDrug extends StatelessWidget {
  dynamic name;
  dynamic imageurl;
  String desctription;
  dynamic price;
  dynamic quaniti;
  
  AllDrug({super.key, required this.name,
                       required this.imageurl,
                       required this.desctription,
                       required this.price,
                       required this.quaniti,
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
        title: Text(name??'News',style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Column(children: 
        [
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.only(left: 15),
            alignment: Alignment.topLeft,
            child: Text(name, style: TextStyle(fontSize: 20,
            fontWeight: FontWeight.w600),),),
            SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.only(left: 15),
            alignment: Alignment.topLeft,
            child: Text('Etiam mollis metus non purus ', style: TextStyle(fontSize: 17,
            fontWeight: FontWeight.w400, color: Colors.black45),),),
            SizedBox(height: 15,),
          Container(
            alignment: Alignment.center,
            child: Image.network(imageurl,width: 300,)),
          SizedBox(height: 20,),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:[
          Container(
            padding: EdgeInsets.only(left: 15),
            alignment: Alignment.topLeft,
            child: Text('${price} som', style: TextStyle(fontSize: 25),)),
            
           InkWell(
            onTap: (() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Add(
                  name: name,imageurl: imageurl,desctription:desctription,price:price,
                  quaniti:quaniti
                )));
              }),
             child: Container(
              padding: EdgeInsets.only(left: 140,top: 25),
              child: Icon(Icons.add_box_outlined,color: Colors.blue,),
             ),
           ),
            InkWell(
              onTap: (() {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Add(
                  name: name,imageurl: imageurl,desctription:desctription,price:price,
                  quaniti:quaniti
                )));
              }),
              child: Container(
                padding: EdgeInsets.only(right: 15, top: 25),
                alignment: Alignment.topLeft,
                child: Text('Add to cart', style: TextStyle(fontSize: 18,color: Colors.blue),)),
            ),
           
            ] 
          ),
          Container(
              padding: EdgeInsets.only(left: 15,bottom: 10),
              alignment: Alignment.topLeft,
              child: Text('Etiam mollis ', style: TextStyle(fontSize: 20,color: Colors.black45),)),
          Container(
            padding: EdgeInsets.only(right: 18,left: 18),
            child: Divider(thickness: 0.7,color: Colors.black54,)),
          Container(
              padding: EdgeInsets.only(left: 15,top: 10),
              alignment: Alignment.topLeft,
              child: Text('Package size', style: TextStyle(fontSize: 20,color: Colors.black),)),
              SizedBox(height: 20,),
          Padding(padding: EdgeInsets.only(right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Container(
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width*0.25,
              decoration: BoxDecoration(
               color: Colors.grey[300], 
               borderRadius: BorderRadius.circular(10)
              ),
              child: Column(children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(15),
                  child: Text('${price*2}',style: TextStyle(fontSize: 18))),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 15),
                  child: Text('500 pellets',style: TextStyle(fontSize: 16))),
              ]),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width*0.25,
              decoration: BoxDecoration(
               color: Colors.grey[300], 
               borderRadius: BorderRadius.circular(10)
              ),
              child: Column(children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(15),
                  child: Text('${price*3}',style: TextStyle(fontSize: 18))),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 15),
                  child: Text('110 pellets',style: TextStyle(fontSize: 16))),
              ]),
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width*0.25,
              decoration: BoxDecoration(
               color: Colors.grey[300], 
               borderRadius: BorderRadius.circular(10)
              ),
              child: Column(children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(15),
                  child: Text('${price*4}',style: TextStyle(fontSize: 18))),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 15),
                  child: Text('300 pellets',style: TextStyle(fontSize: 16))),
              ]),
            ),
            ]),
          ),
          SizedBox(height: 10,),
           Container(
              padding: EdgeInsets.only(left: 15,top: 10),
              alignment: Alignment.topLeft,
              child: Text('Package size', style: TextStyle(fontSize: 20,color: Colors.black),)),
          
         
          Container(
            padding: EdgeInsets.all(15),
            child: Text(desctription, style: TextStyle(fontSize: 20),)),
            SizedBox(height: 10,),
        
        ]
          ),
      )
      
    );
  }
}