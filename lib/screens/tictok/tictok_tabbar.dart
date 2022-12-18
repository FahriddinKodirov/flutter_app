import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/aktualnoy.dart';
import 'package:flutter_application_1/screens/home_work/home_work.dart';
import 'package:flutter_application_1/screens/news.dart';
import 'package:flutter_application_1/screens/tictok/disqocer.dart';
import 'package:flutter_application_1/screens/tictok/inbox.dart';
import 'package:flutter_application_1/screens/tictok/profile.dart';
import 'package:flutter_application_1/screens/tictok/tictok_home.dart';
import 'package:flutter_application_1/utils/my_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TicTok_TabBar extends StatefulWidget {
  const TicTok_TabBar({super.key});

  @override
  State<TicTok_TabBar> createState() => _TicTok_TabBarState();
}

class _TicTok_TabBarState extends State<TicTok_TabBar> {
  int Index = 0;
   List<Widget> _page = [
   
    TicTokHome(),
    Aktualnoy(),
    Discover(),
    HomeWork(),
    Profile(),
    
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[Index],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        onTap: (int index){
          setState(() {
            Index = index;
          });
        },
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedIconTheme: IconThemeData(color: Colors.white),
        iconSize: 28.0,
        
        type: BottomNavigationBarType.fixed,
        currentIndex: Index,
        fixedColor: Colors.white,
        unselectedItemColor: Colors.white54,
        backgroundColor: Colors.black,
        selectedLabelStyle: TextStyle(height: 2),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 30,),
          label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search, size: 30,),
          label: 'search'),
          BottomNavigationBarItem(icon: SvgPicture.asset(MyImages.Image_plus_video,width: 50),
          label: ''),
          BottomNavigationBarItem(icon: SvgPicture.asset(MyImages.Image_inbox,width: 22,color: Colors.white54),
          label: 'inbox'),
          BottomNavigationBarItem(icon: SvgPicture.asset(MyImages.Image_user,width: 20,color: Colors.white54),
          label: 'Me'),
        ],
      ),
    );
  }
}