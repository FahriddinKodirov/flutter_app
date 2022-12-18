// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/screens/aktualnoy.dart';
// import 'package:flutter_application_1/screens/cnet.dart';
// import 'package:flutter_application_1/screens/gizmodo_en.dart';
// import 'package:flutter_application_1/screens/slashdot.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.blueAccent.withOpacity(0.8),
//             leading: IconButton(
//               iconSize: 30,
//               splashRadius: 12,
//               icon: Icon(Icons.menu),
//               onPressed: () {},
//             ),
//             title: Text(
//               'Tech News',
//               style: TextStyle(fontWeight: FontWeight.w700),
//             ),
//             actions: [
//               IconButton(
//                 padding: EdgeInsets.only(right: 10),
//                 splashRadius: 12,
//                 iconSize: 30,
//                 icon: Icon(Icons.travel_explore_sharp),
//                 onPressed: () {},
//               ),
//             ],
//           ),
//           body: SingleChildScrollView(
//             child: SafeArea(
//               child: Column(children: [
//                 Container(
//                   child: TabBar(
//                       isScrollable: true,
//                       unselectedLabelColor: Colors.white54,
//                       labelColor: Colors.white,
//                       automaticIndicatorColorAdjustment: false,
//                       indicatorColor: Colors.black,
//                       tabs: [
//                         Tab(
//                             icon: Text(
//                           'current',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                         Tab(
//                             icon: Text(
//                           'gizmodo en',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                         Tab(
//                             icon: Text(
//                           'cnet',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                         Tab(
//                             icon: Text(
//                           'slashot',
//                           style: TextStyle(fontSize: 20),
//                         )),
//                       ]),
//                 ),
//                 Container(
//                     height: MediaQuery.of(context).size.height * 0.836,
//                     child: TabBarView(children: [
//                       Aktualnoy(),
//                       Gizmdodo_en(),
//                       Cnet(),
//                       Slahdot()
//                     ])),
//               ]),
//             ),
//           )),
//     );
//   }
  
// }
