import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/utils/my_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeWork extends StatefulWidget {
  const HomeWork({super.key});

  @override
  State<HomeWork> createState() => _HomeWorkState();
}

class _HomeWorkState extends State<HomeWork> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xFF2D9CDB), Color(0xFF2F80ED)]),
          image: DecorationImage(image: AssetImage(MyImages.Image_medtech))
        ),
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            child: SvgPicture.asset(MyImages.Image_medtech1),
          ),
           Container(
            child: Image.asset(MyImages.Image_medtech2,width: 120,),
          )
        ],),),
      ),
    );
  }
}