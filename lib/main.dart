import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/aktualnoy.dart';
import 'package:flutter_application_1/screens/amaliyot/size.dart';
import 'package:flutter_application_1/screens/home_work/all_product.dart';
import 'package:flutter_application_1/screens/home_work/all_product1.dart';
import 'package:flutter_application_1/screens/home_work/home_work.dart';
import 'package:flutter_application_1/screens/my_home_page.dart';
import 'package:flutter_application_1/screens/tictok/tictok_home.dart';
import 'package:flutter_application_1/screens/tictok/tictok_tabbar.dart';
import 'package:flutter_application_1/screens/ustoz.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext contexrt) {
    return ScreenUtilInit(
      designSize: const Size(375, 771.5),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: child);
  },
  child: All_product1()
    );
  }
}

