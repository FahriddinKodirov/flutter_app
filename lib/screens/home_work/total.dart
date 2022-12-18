import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Total extends StatelessWidget {
  dynamic imageurl;
  dynamic name;
  dynamic price;
  dynamic quaniti;
  
  Total({super.key,required this.imageurl,
                   required this.price,
                   required this.name,
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
        title: Text('Total',style: TextStyle(color: Colors.black),),
      ),
      body: Column(children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Image.network(imageurl),
        ),
        Divider(thickness: 0.7,color: Colors.black26,),
        Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text('Count',style: TextStyle(color: Colors.black,
                  fontSize: 22)),
                ),
                
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Text('${quaniti}',style: TextStyle(color: Colors.black,fontSize: 22)),
                ),
              ],
            ),
        Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: Text('Total',style: TextStyle(color: Colors.black,
                  fontSize: 22)),
                ),
                
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Text('${(price*quaniti)-(((price*quaniti)~/16)+((price*quaniti)~/10))}',style: TextStyle(color: Colors.black,fontSize: 22)),
                ),
              ],
            ),
      ]),
    );
  }
}