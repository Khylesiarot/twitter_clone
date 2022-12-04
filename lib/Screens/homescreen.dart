import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_clone/homepage.dart';
import '../post/posttemp.dart';
import '../post/tweets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen(Tweets tweets, {super.key});

  int? get index => null;

  @override
  // ignore: no_logic_in_create_state
  Homescreen createState() => Homescreen(tweets);
}

int? value;

class Homescreen extends State<HomeScreen> {
  Homescreen(Tweets tweets);

  remove (int value){
    setState(() {
      tweets.tweets.removeAt(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
         backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
             icon: const Icon(
               Icons.account_circle_outlined,
               color: Colors.black,
               size: 25,
           ), onPressed: (){  if(scaffoldKey.currentState!.isDrawerOpen){
                       scaffoldKey.currentState!.closeDrawer();
                       //close drawer, if drawer is open
                  }else{
                       scaffoldKey.currentState!.openDrawer();
                       //open drawer, if drawer is closed
                  }},
           ),
          title: const FaIcon(
            FontAwesomeIcons.twitter,
            color: Colors.blue,
          ),
          actions: [
            IconButton(
              onPressed: () => {},
              icon: const FaIcon(FontAwesomeIcons.bolt),
              iconSize: 20,
              color: Colors.black,
            )
          ],
        ),
       
         
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: ListView.separated(
              itemBuilder: (context, index) {
                return buildTweets(context, tweets, index,remove);
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  height: 5.0,
                );
              },
              itemCount: tweets.tweets.length),
        ));
  }
}
