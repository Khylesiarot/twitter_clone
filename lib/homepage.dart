

import 'package:flutter/material.dart';
import './post/tweets.dart';
import './botnav/botnavig.dart';
import 'Screens/homescreen.dart';
import 'Screens/searchscreen.dart';

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
 
 late TabController tabController;

 @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: 0, length: 5, vsync: this);
  }

   




  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: TabBarView (children: [
         HomeScreen(tweets),
          SearchScreen(),
     ], controller: tabController,),

     bottomNavigationBar: botnav(context, tabController)
        );
    
  
    
    
  }
}