import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
TextEditingController _numberCtrl = new TextEditingController();

  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false, 
      title: 'Contact',
      theme: ThemeData(
        
        primarySwatch: Colors.indigo,
      ),
      
      home: MyHomePage(title: 'Contact FMO',),
    );
   
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

 
  final String title;



  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
       
        title: new Center(child: new Text(widget.title, textAlign: TextAlign.center)),
      leading: new IconButton(
          icon: new Icon(Icons.contact_phone),
          onPressed: () {
            _callNumber();
          },
      ),
      ),
      body: ListView(
       
       
          
          
          children: <Widget>[
            
            Center(
              child: Container(
                margin: EdgeInsets.only(left:50,top:60),
                child: AnimatedTextKit(

                  repeatForever: true,
      animatedTexts: [
        TypewriterAnimatedText('Hello, I am Furkan Metin OĞUZ',textStyle: TextStyle(color: Colors.black54,fontSize: 24)),
       TypewriterAnimatedText('I am a computer engineer',textStyle: TextStyle(color: Colors.black54,fontSize: 24)),
        TypewriterAnimatedText('How can I help you?',textStyle: TextStyle(color: Colors.black87,fontSize: 24)) 
      ],
      onTap: () {
        print("Tap Event");
      },
    ),
              ),
            ), 
           
              
               
               Row(

 
                
                      mainAxisAlignment: MainAxisAlignment.center, 
                      
                   children: [
                     
                     
                       Container(
                         margin: EdgeInsets.only(top:60),
                         width: 180, 
                          
                         child: Text("I can Write",
                          style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,color: Colors.black.withOpacity(0.6)),
              
                          ),
                       ),
                   
                   
                         Container(
                             margin: EdgeInsets.only(top:60),
                          width: 80, 
                         height: 100, 
                          
                           child: RotateAnimatedTextKit(text: ["Dart","Python","Java","C/C++","Js"],
             textStyle: TextStyle(fontSize: 24,color: Color.fromARGB(255, 0, 102, 204)),
        pause: Duration(milliseconds: 1000),
        duration: Duration(milliseconds: 1000),
        repeatForever: true, 
             ),
                         ),
                      
                   ],
                   
                 ),
               
             Container( 
             width: 10,
             margin: EdgeInsets.only(top:30),
               child: ElevatedButton(
    child: Text('Web Site'),
    style: ElevatedButton.styleFrom(
      primary: Colors.blueGrey,
      onPrimary: Colors.white,
      shadowColor: Colors.red,
      elevation: 5,
    ),
    onPressed: () {
      _launchURL();
    },
  )),
               Container(
                 margin: EdgeInsets.only(top:10), 
             width: 10, 
               child:ElevatedButton(
    child: Text('Github'),
    style: ElevatedButton.styleFrom(
      primary: Colors.blueGrey,
      onPrimary: Colors.white,
      shadowColor: Colors.red,
      elevation: 5,
    ),
    onPressed: () {
     _launchURL1();
    },
  )),
                 Container(
                 margin: EdgeInsets.only(top:10), 
             width: 10, 
               child: ElevatedButton(
    child: Text('Linkedln'),
    style: ElevatedButton.styleFrom(
      primary: Colors.blueGrey,
      onPrimary: Colors.white,
      shadowColor: Colors.red,
      elevation: 5,
    ),
    onPressed: () {
     _launchURL2();
    },
  )), 
                 Container(
                 margin: EdgeInsets.only(top:10), 
             width: 10, 
               child:ElevatedButton(
    child: Text('Instagram'),
    style: ElevatedButton.styleFrom(
      primary: Colors.blueGrey,
      onPrimary: Colors.white,
      shadowColor: Colors.red,
      elevation: 5,
    ),
    onPressed: () {
      _launchURL3();
    },
  )), 
                 Container(
                 margin: EdgeInsets.only(top:10), 
             width: 10, 
               child:ElevatedButton(
    child: Text('Send Mail'),
    style: ElevatedButton.styleFrom(
      primary: Colors.blueGrey,
      onPrimary: Colors.white,
      shadowColor: Colors.red,
      elevation: 5,
    ),
    onPressed: () {
      _launchEmail();
    },
  )), 
  
  Center(
    child: Container(
      margin:EdgeInsets.only(top:60) ,
      child:
      Text("With",
      style:
       TextStyle(fontSize: 18,
       color: Colors.black54),
       )
    ),
  ),
  Container(
child:ImageIcon(
                          new AssetImage(
                              "assets/images/image.png"),
                          size: 70.0,
                          color: Colors.black45)
  )
          ],
        ),
        
     
      
    );
  }

_callNumber() async{
  const number = '05446861071'; //set the number here
  bool res = await FlutterPhoneDirectCaller.callNumber(number);
}
  _launchEmail() async {
    launch(
        "mailto:fmo@fmobey.com?subject=Merhaba&body=Nasılsın%20Furkan ");
  }

  _launchURL() async {
    const url = 'https://fmobey.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
   _launchURL1() async {
    const url = 'https://github.com/fmobey';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
   _launchURL2() async {
    const url = 'https://tr.linkedin.com/in/furkan-metin-o%C4%9Fuz-134226198';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
    }
     _launchURL3() async {
    const url = 'https://instagram.com/fmobey';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
    
  }
   
}

