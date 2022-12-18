import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screens/home_work/all_drug.dart';
import 'package:flutter_application_1/screens/home_work/all_drug2.dart';
import 'package:flutter_application_1/screens/home_work/drugs.dart';
import 'package:flutter_application_1/utils/my_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';


class All_product1 extends StatefulWidget {
  const All_product1({super.key});

  @override
  State<All_product1> createState() => _All_product1State();
}

class _All_product1State extends State<All_product1> {
  Future<List<Drug>?>? getResult;

  Future<List<Drug>> getData() async {
    String url = "https://pharmacy-app-management.herokuapp.com/api/drugs";

    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      List json = jsonDecode(response.body) as List;
      List<Drug> users = json.map((e) => Drug.fromJson(e)).toList();

      return users;
    }
    return List.empty();
  }

  @override
  void initState() {
    super.initState();

    getResult = getData();
  }
  
  @override
  Widget build(BuildContext context) {
  var hit = MediaQuery.of(context).size.height;
  var wet = MediaQuery.of(context).size.width;
  print(hit);
  print(wet);

    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF), 
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.black,),
        title: Text('All Products',style: TextStyle(color: Colors.black),),
        elevation: 0,
        backgroundColor: Color(0xFFFFFFFF),
      ),

      body: FutureBuilder<List<Drug>?>(
            future: getResult,
            builder: (BuildContext context,
                AsyncSnapshot<List<Drug>?> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Container(
                  height: MediaQuery.of(context).size.height,
                  child: Center(child: CircularProgressIndicator()),
                );
              }
              if (snapshot.hasError) {
                return Center(child: Text(snapshot.error.toString()));
              }
              if (snapshot.hasData) {
                List<Drug?>? users = snapshot.data;

                return Container(
                  child:
      
      ListView.builder(
         itemCount: (users?.length ?? 0)~/2,
         itemBuilder: (BuildContext context, int index){
            return stuff(context,
                                users?[index]?.id ?? 0,
                                users?[index]?.name ?? "NO",
                                users?[index]?.description ?? "NO",
                                users?[index]?.price ?? 0,
                                users?[index]?.quantity ?? 0,
                                users?[index]?.imageUrl ?? "NO",
                                
                                users?[index+users.length~/2]?.id ?? 0,
                                users?[index+users.length~/2]?.name ?? "NO",
                                users?[index+users.length~/2]?.description ?? "NO",
                                users?[index+users.length~/2]?.price ?? 0,
                                users?[index+users.length~/2]?.quantity ?? 0,
                                users?[index+users.length~/2]?.imageUrl ?? "NO",
                                "https://pharmacy-app-management.herokuapp.com/api/drugs");
        
         }
        
      ));
      
              }
              return Container(child: Text('salom'),);
            })
            );
    
  }
  Widget stuff(context, id, name, desctription,price,quaniti,imageurl,
                        id2, name2, desctription2,price2,quaniti2,imageurl2,url){
    return Row(
     
      children: [
        InkWell(onTap: (() {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AllDrug(
            name: name,imageurl: imageurl,desctription:desctription,price:price,
            quaniti:quaniti
          )));
        }),
          child: Container(
            margin: EdgeInsets.only(top: 20, left: 15, right: 15, ).r,
            color: Colors.green,
            height: MediaQuery.of(context).size.height*0.343.h,
            width: MediaQuery.of(context).size.width*0.42.w,
            child: Column(children: [
              Container(
                height: MediaQuery.of(context).size.height*0.217.h,
                width: MediaQuery.of(context).size.width*0.42.w,
                color: Color(0xFFF5F7FA),
                child: Center(
                  child: Container(
                    height: 120.h,
                    width: 120.w,
                    child: Image.network(imageurl)),
                )
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.125.h,
                width: MediaQuery.of(context).size.width*0.42.w,
                color: Color(0xFFFFFFFF),
                child: Container(
                  padding: EdgeInsets.only(top: 10,right: 6).r,
                  height: 120.h,
                  width: 120.w,
                  child: Column(
                    
                    children:[
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: 10).r,
                     child: Text(name,style: TextStyle(fontSize: 20.sm),),
                      
                    ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Container(
                        alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: 10.r,top: 15.r),
                        child: Text('${price} som', style: TextStyle(fontSize: 16.sp
                        ,color: Colors.black.withOpacity(0.7)),)),
                      
                      
                        Container(
                          alignment: Alignment.topRight,
                          padding: EdgeInsets.only(top: 20.r),
                          child: SvgPicture.asset(MyImages.Image_star),),
                      ]   
                    ),
                    Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 12,top: 5).r,
                        child: Text('${quaniti} гр', style: TextStyle(fontSize: 12.sp,
                        color: Colors.black45),)),
                  ] ))
              ),
              
              
            ],
            )
            ),
        ),

          InkWell(onTap: (() {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AllDrug2(
            name2: name2,imageurl2: imageurl2,desctription2:desctription2,price2:price2,
            quaniti2:quaniti2
          )));
        }),
            child: Container(
            margin: EdgeInsets.only(top: 20, left: 15, right: 15, ).r,
            color: Colors.green,
            height: MediaQuery.of(context).size.height*0.343.h,
            width: MediaQuery.of(context).size.width*0.42.w,
            child: Column(
              
              children: [
              
              Container(
                height: MediaQuery.of(context).size.height*0.217.h,
                width: MediaQuery.of(context).size.width*0.42.w,
                color: Color(0xFFF5F7FA),
                child: 
              Center(
                    child: Container(
                      
          
                      height: 120.h,
                      width: 120.w,
                      child: Image.network(imageurl2)),
                  ),
          
                
              ),
              
              Container(
                height: MediaQuery.of(context).size.height*0.125.h,
                width: MediaQuery.of(context).size.width*0.42.w,
                color: Color(0xFFFFFFFF),
                child: Container(
                  padding: EdgeInsets.only(top: 10,right: 6).r,
                  height: 120.h,
                  width: 120.w,
                  child: Column(
                    
                    children:[
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: 15).r,
                     child: Text(name2,style: TextStyle(fontSize: 20.sp),),
                      
                    ),
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        Container(
                        alignment: Alignment.topLeft,
                      padding: EdgeInsets.only(left: 10,top: 15).r,
                        child: Text('${price2} som', style: TextStyle(fontSize: 16.sp
                        ,color: Colors.black.withOpacity(0.7)),)),
                      
                      
                        Container(
                          padding: EdgeInsets.only(top: 20, left: 25).r,
                          child: SvgPicture.asset(MyImages.Image_star),),
                      ]   
                    ),
                    Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.only(left: 12,top: 5).r,
                        child: Text('${quaniti2} гр', style: TextStyle(fontSize: 12.sp,
                        color: Colors.black45),)),
          
                  ] ))
              ),
              
                
            ],
            )
            ),
          )
    ],);
  }
  
}