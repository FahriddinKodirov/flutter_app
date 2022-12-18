// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_application_1/screens/home_work/drugs.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:http/http.dart' as http;
// import 'package:http/http.dart';

// class AllProduct extends StatefulWidget {
//   const AllProduct({super.key});

//   @override
//   State<AllProduct> createState() => _AllProductState();
// }

// class _AllProductState extends State<AllProduct> {
//   Future<List<Drug>?>? getResult;

//   Future<List<Drug>> getData() async {
//     String url = "https://pharmacy-app-management.herokuapp.com/api/drugs";

//     var response = await http.get(Uri.parse(url));
//     if (response.statusCode == 200) {
//       List json = jsonDecode(response.body) as List;
//       List<Drug> users = json.map((e) => Drug.fromJson(e)).toList();

//       return users;
//     }
//     return List.empty();
//   }

//   @override
//   void initState() {
//     super.initState();

//     getResult = getData();
//   }

  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.brown[200],
//         appBar: AppBar(),
//         body: 
//         // FutureBuilder<List<Drug>?>(
//         //     future: getResult,
//         //     builder: (BuildContext context,
//         //         AsyncSnapshot<List<Drug>?> snapshot) {
//         //       if (snapshot.connectionState == ConnectionState.waiting) {
//         //         return Container(
//         //           height: MediaQuery.of(context).size.height,
//         //           child: Center(child: CircularProgressIndicator()),
//         //         );
//         //       }
//         //       if (snapshot.hasError) {
//         //         return Center(child: Text(snapshot.error.toString()));
//         //       }
//         //       if (snapshot.hasData) {
//         //         List<Drug?>? users = snapshot.data;

//         //         return Container(
//                   // child:
//                    SingleChildScrollView(
//                      child: SizedBox(
//                       height: 1500,
//                        child: GridView.builder(
                          
//                           physics: BouncingScrollPhysics(),
//                           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//                           itemCount: 10,
//                           itemBuilder: (context, index) {
//                             return stuff(index);
//                                 // context,
//                                 // users?[index]?.id ?? 0,
//                                 // users?[index]?.name ?? "NO",
//                                 // users?[index]?.description ?? "NO",
//                                 // users?[index]?.price ?? 0,
//                                 // users?[index]?.quantity ?? 0,
//                                 // users?[index]?.imageUrl ?? "NO");
//                           }),
//                      ),
//                    ),
                      
//                 );
                
//               // }
//               // return Container(child: Text('salom'),);
//             // })
//             // );
//   }

//   Widget stuff(index){
//   return Stack(
//     children:[
//       Container(
//         margin: EdgeInsets.all(25),
//         height: MediaQuery.of(context).size.height*0.35,
//         width: MediaQuery.of(context).size.width*0.45,
//         color: Colors.blue
//       ),
//       // Positioned(
//       // top: 207
//       // left: 20,
//       // child: Container(
//       //   height: MediaQuery.of(context).size.height*0.13,
//       //   width: MediaQuery.of(context).size.width*0.45,
//       //   color: Colors.red,
//       // )),
      
      
//     ],
//   );
//   } 
// }