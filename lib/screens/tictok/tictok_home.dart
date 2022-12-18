import 'dart:convert';
import 'dart:ffi';
import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/tictok/jokes.dart';
import 'package:flutter_application_1/screens/tictok/word.dart';
import 'package:flutter_application_1/utils/my_image.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class TicTokHome extends StatefulWidget {
  const TicTokHome({super.key});

  @override
  State<TicTokHome> createState() => _TicTokHomeState();
}

class _TicTokHomeState extends State<TicTokHome> {
  Future<Word?> getData() async {
    String url = "https://v2.jokeapi.dev/joke/Any?amount=50&safe-mode";

    Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var json = jsonDecode(response.body) as Map<String, dynamic>;
      return Word.fromjson(json);
    }

    return null;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  FutureBuilder<Word?>(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<Word?> birnima) {
          if (birnima.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (birnima.connectionState == ConnectionState.done) {
            if (birnima.hasData) {
              Word? words = birnima.data;
              return picture(words?.jokes);
            }
            if (birnima.hasError) {
              return Center(child: Text(birnima.error.toString()));
            }
          }
          return Container(
            child: Center(
              child: Text(
                "Nimdir xatolik bor",
                style: TextStyle(fontSize: 24),
              ),
            ),
          );
        },
      ),
    );
  }
static var _random = Random();

Widget picture(List<Jokes>? jokes){
  return PageView.builder(
         scrollDirection: Axis.vertical,
         itemCount: jokes?.length ?? 0,
         itemBuilder: (context, index) {
         return Container(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5),
          width: MediaQuery.of(context).size.width*1,
          height: MediaQuery.of(context).size.height*1,
          decoration: BoxDecoration(
            image: DecorationImage(
              matchTextDirection: false,
              image: NetworkImage("https://source.unsplash.com/random/${index}"),fit: BoxFit.fill,
            
              ),
              
              
              
              ),
              child: Stack(children: [
                Container(
                
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                ),
                 Container(
                  
                  padding: EdgeInsets.symmetric(horizontal: 50,vertical: 300),
                   child: Positioned( 
                      
                      child: Text(
                      jokes?[index].joke ?? "No data",
                      textScaleFactor: 0.7,
                      textAlign: TextAlign.start,
                      softWrap: true,
                      overflow:TextOverflow.fade,
                      maxLines: 7,
                      
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      textBaseline:TextBaseline.ideographic,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 7,
                          offset: Offset(3,3)
                        )], ),
                      ),
                    ),
                 ),
                  Container(
                  
                  padding: EdgeInsets.symmetric(horizontal: 50,vertical: 300),
                   child: Positioned( 
                      
                      child: Text(
                      jokes?[index].setup ?? "No data",
                      textScaleFactor: 0.7,
                      textAlign: TextAlign.start,
                      softWrap: true,
                      overflow:TextOverflow.fade,
                      maxLines: 7,
                      
                      style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      textBaseline:TextBaseline.ideographic,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 7,
                          offset: Offset(3,3)
                        )], ),
                      ),
                    ),
                 ),
                Positioned(
                  top: 390,
                  left: 300,
                  child: CircleAvatar(
                    radius: 25,
                   foregroundImage: NetworkImage(
                    "https://i.pravatar.cc/300?img=42",
                  ))),
                      
                Positioned(
                  left:301,
                  top: 460,
                  child: Icon(Icons.favorite_rounded,color: Colors.white,
                  size: 50,)
                ),
                    
                Positioned(
                  left:301,
                  top: 525,
                  child: SvgPicture.asset(MyImages.Image_comment,width: 50,
                  color: Colors.white ,),
                  ),
                 Positioned(
                  left:301,
                  top: 590,
                 
                  child:SvgPicture.asset(MyImages.Image_share,width: 50,
                 )),
                
                 Positioned(
                  right: 193,
                  top: 620,
                  child: Text('@karennne · 1-28',style: TextStyle(color: Colors.white,
                  fontSize: 20, fontWeight: FontWeight.w500))),
                Positioned(
                 right: 214,
                 top: 650,
                 child: Text('#avicii #wflove',style: TextStyle(color: Colors.white,
                 fontSize: 20, fontWeight: FontWeight.w500))),
                 Positioned(
                  right: 98,
                  top: 680,
                  child: Text('Avicii - Waiting For Love (ft. ',style: TextStyle(color: Colors.white,
                  fontSize: 20, fontWeight: FontWeight.w500))),
                 Positioned(
                  left:270,
                  top: 650,
                 
                  child: Image.asset(MyImages.Image_mp3_2,width: 50,
                 ),
                  ),
                  Positioned(
                  left:300,
                  top: 655,
                  
                  child: 
                      Container(
                        child: Image.asset(MyImages.Image_mp3,width: 50,),
                      ),),
                      
                      Positioned(
                        left:310,
                        top: 665,
                        child:  CircleAvatar(
                        radius: 15,
                        foregroundImage: NetworkImage(
                       "https://xsgames.co/randomusers/assets/avatars/male/${_random.nextInt(50)}.jpg",
                  )),
                      
                 
                  ),
                  ] 
                ),
                
 

                
                
                
               
                
                
                //   Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //  Container(
                //   padding: EdgeInsets.only(bottom:55, left: 10),
                //   child: Text('Avicii - Waiting For Love (ft. ',style: TextStyle(color: Colors.white,
                //   fontSize: 20, fontWeight: FontWeight.w500))),
                  
                //   Row(children: [
                //     Container( 
                //       // padding: EdgeInsets.only(bottom: 50,right: 10),
                //       child:SvgPicture.asset(MyImages.Image_mp3_2,width: 60,color: Colors.red,
                //                    )),
                //   Container(
                  
                //   padding: EdgeInsets.only(bottom: 50,right: 5),
                //   child: Image.asset(MyImages.Image_mp3,width: 50,
                //  ),
                //   ),

                //   ])]),
                
                 
                
                
            
                

                
         
          
            ));
         });
      
} 

}

