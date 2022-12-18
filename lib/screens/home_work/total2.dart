import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Total2 extends StatelessWidget {
  dynamic imageurl2;
  dynamic name2;
  dynamic price2;
  dynamic quaniti2;
  
  Total2({super.key,required this.imageurl2,
                   required this.price2,
                   required this.name2,
                   required this.quaniti2,
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
          child: Image.network(imageurl2),
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
                  child: Text('${quaniti2}',style: TextStyle(color: Colors.black,fontSize: 22)),
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
                  child: Text('${(price2*quaniti2)-(((price2*quaniti2)~/16)+((price2*quaniti2)~/10))}',style: TextStyle(color: Colors.black,fontSize: 22)),
                ),
              ],
            ),
      ]),
    );
  }
}