
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';
import './post/tweets.dart';
import './post/posttemp.dart';

Tweets tweets = Tweets();
class HomePage extends StatefulWidget{
  const HomePage({super.key});

  
  @override
  Homepage createState() => Homepage();


}

class Homepage extends State<HomePage> {
  String src = "https://cdn-icons-png.flaticon.com/512/733/733579.png";
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

    body:  ListView.separated(
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
        

    );
  }
}