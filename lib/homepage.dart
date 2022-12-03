
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';
import './post/tweets.dart';
import './post/posttemp.dart';
import './botnav/botnavig.dart';

Tweets tweets = Tweets();
class HomePage extends StatefulWidget{
 static const routename = './homepage/';

  const HomePage({super.key});

  
  @override
  Homepage createState() => Homepage();


}




class Homepage extends State<HomePage> with TickerProviderStateMixin {
  String src = "https://cdn-icons-png.flaticon.com/512/733/733579.png";
  int _currIndex= 0;
  void _nextIndex(int val) {
    setState(() {
      _currIndex = val;
    });
  }
 late TabController tabController;

 @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 0, length: 5, vsync: this);
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: 
          AppBar(
            centerTitle: true,           backgroundColor: Colors.white,
            leading: IconButton(onPressed: ()=> {}, icon: Icon(Icons.account_circle_outlined, color: Colors.black, size: 25,),),
            title: FaIcon( FontAwesomeIcons.twitter , color: Colors.blue, ),
            actions: [IconButton(onPressed: () => {}, icon: FaIcon(FontAwesomeIcons.bolt), iconSize: 20, color: Colors.black,)],

          ),

    body:  Padding(
      padding: const EdgeInsets.fromLTRB(0,0,0,0),
      child: ListView.separated(
                itemBuilder: (context, index) {
                  return buildTweets(context,tweets,index);
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 5.0,
                  );
                },
                itemCount: tweets.tweets.length),
    ),

     bottomNavigationBar: botnav(context, _nextIndex, tabController)
        ),
    
  
    
    );
  }
}