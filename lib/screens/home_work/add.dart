import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/home_work/total.dart';
import 'package:flutter_application_1/utils/my_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Add extends StatefulWidget {
  dynamic name;
  dynamic imageurl;
  String desctription;
  dynamic price;
  dynamic quaniti;
  
  Add({super.key, required this.name,
                       required this.imageurl,
                       required this.desctription,
                       required this.price,
                       required this.quaniti,
                       });
 
  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  bool cancel = true;
  var count = 0;
  
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back, color: Colors.black,),
        splashRadius: 2,
        onPressed: (() {
          Navigator.pop(context);
        })),
        title: Text('Your cart',style: TextStyle(color: Colors.black),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                
            Container(
              padding: EdgeInsets.only(left: 25),
              alignment: Alignment.topLeft,
              child: Text('1 Items in your cart', style: TextStyle(fontSize: 17,
              color: Colors.black45),)),
              
             InkWell(
              radius: 10,
              onTap: (() {
                setState(() {
                  cancel = true;
                  !cancel?count = 0:count;
                });
              }),
               child: Container(
                padding: EdgeInsets.only(left: 110),
                child: Icon(Icons.add,color: Color(0xFF4157FF),),
               ),
             ),
             
             InkWell(
              radius: 10,
              onTap: (() {
                setState(() {
                  cancel = true;
                  !cancel?count = 0:count;
                });
              }),
               child: Container(
                padding: EdgeInsets.only(right: 22),
                child:  Text('Add more', style: TextStyle(fontSize: 17,
                color: Color(0xFF4157FF)),),
               ),
             ),
             
              ] 
            ), 
            SizedBox(height: 10,),
            cancel?Row(
              children:[
                Container(
                alignment: Alignment.topLeft,
                 padding: EdgeInsets.only(left: 20),
                  child: Image.network(widget.imageurl, width: 120,)),
                Stack(
                  children:[
                    Container(
                      width: 260,
                    ),
                    Container(
                    
                    padding: EdgeInsets.only(bottom: 90,left: 10),
                    child: Text(widget.name,
                    style: TextStyle(fontSize: 17),)),
                Positioned(
                  top: 24,
                  left: 12,
                  child: Text('bottle of 500 pellets',style: TextStyle(color: Colors.black45),),),
                
                Positioned(
                  top: 75,
                  left: 12,
                  child: Text('${widget.price} som',style: TextStyle(fontSize: 20))),
                Positioned(
                  left: 230,
                  top: 5,
                  child: InkWell(
                    onTap: (() {
                      setState(() {
                       
                        cancel = !cancel;
                      });
                    }),
                    child: SvgPicture.asset(MyImages.Image_plus)),),
                Positioned(
                  left: 160,
                  top: 70,
                  child: 
                  SvgPicture.asset(MyImages.Image_rectangel),),
                Positioned(
                  left: 160,
                  top: 70,
                  child: InkWell(
                    onTap: (() {
                      setState(() {
                        if(count > 0)
                        count--;
                      });
                    }),child: SvgPicture.asset(MyImages.Image_ellipse25)),),
                Positioned(
                  left: 225,
                  top: 70,
                  child: InkWell(
                    onTap: (() {
                      setState(() {
                        count++;
                      });
                    }),
                    child: SvgPicture.asset(MyImages.Image_ellipse24)),),
                Positioned(
                  left: 204,
                  top: 73,
                  child: Text('${count}',style: TextStyle(fontSize: 20),),) 
      
                  ] 
                ),
          
              ] 
            ):Container(),
            Container(
              margin: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height*0.075,
              width: MediaQuery.of(context).size.width*0.9,
              decoration: BoxDecoration(
              color: Colors.white,  
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(12)
              ),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: SvgPicture.asset(MyImages.Image_stoke,
                  width: 25,),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Text('1 Coupon applied',style: TextStyle(color: Color(0xFF27AE60),
                  fontSize: 16),),
                ),
              
      
      
                  ],),
                
               
                Container(
                  padding: EdgeInsets.only(right: 15),
                  child: SvgPicture.asset(MyImages.Image_plus,width: 25,),),
              ],)
      
            ),
            Container(
              padding: EdgeInsets.only(left: 20,top: 5),
              alignment: Alignment.topLeft,
              child: Text('Payment Summary',
                    style: TextStyle(fontSize: 20))),
              SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text('Order Total',style: TextStyle(color: Colors.black45,
                  fontSize: 18)),
                ),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Text('${widget.price*count}',style: TextStyle(color: Colors.black,fontSize: 18)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text('Items Discount',style: TextStyle(color: Colors.black45,
                  fontSize: 18)),
                ),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Text('${(widget.price*count)~/10}',style: TextStyle(color: Colors.black,fontSize: 18)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text('Coupon Discount',style: TextStyle(color: Colors.black45,
                  fontSize: 18)),
                ),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Text('${(widget.price*count)~/16}',style: TextStyle(color: Colors.black,fontSize: 18)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text('Shipping',style: TextStyle(color: Colors.black45,
                  fontSize: 18)),
                ),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Text('Free',style: TextStyle(color: Colors.black,fontSize: 18)),
                
                ),
                
              ],
              
            ),
            Divider(thickness: 0.7,color: Colors.black26,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(right: 20,left: 20,top: 10),
                  child: Text('total',style: TextStyle(color: Colors.black,
                  fontSize: 18)),
                ),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Text('${(widget.price*count)-(((widget.price*count)~/16)+((widget.price*count)~/10))}',style: TextStyle(color: Colors.black,fontSize: 18)),
                
                ),
                
              ],
              
            ),
            SizedBox(height: 30,),
            InkWell(
                      onTap: () {
                        widget.quaniti = count;
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Total(imageurl: widget.imageurl, price: widget.price, name: widget.name,quaniti: widget.quaniti)));
                      },
                      child:
            Container(
              margin: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height*0.08,
              width: MediaQuery.of(context).size.width*0.9,
              decoration: BoxDecoration(
              color: Color(0xFF4157FF),  
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.circular(35)
              ),
              child:
              
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text('Place Order @ ${(widget.price*count)-(((widget.price*count)~/16)+((widget.price*count)~/10))} som',style: TextStyle(color: Colors.white,
                      fontSize: 17, fontWeight: FontWeight.w500),),
                    ),)
                  ),
                
               
               
            ),
            
            
          ],
        ),
      ),
    );
  }
}