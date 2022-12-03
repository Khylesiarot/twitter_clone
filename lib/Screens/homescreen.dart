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

class Homescreen extends State<HomeScreen> {
  Homescreen(Tweets tweets);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.account_circle_outlined,
              color: Colors.black,
              size: 25,
            ),
          ),
          title: FaIcon(
            FontAwesomeIcons.twitter,
            color: Colors.blue,
          ),
          actions: [
            IconButton(
              onPressed: () => {},
              icon: FaIcon(FontAwesomeIcons.bolt),
              iconSize: 20,
              color: Colors.black,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: ListView.separated(
              itemBuilder: (context, index) {
                return buildTweets(context, tweets, index);
              },
              separatorBuilder: (context, index) {
                return Divider(
                  height: 5.0,
                );
              },
              itemCount: tweets.tweets.length),
        ));
  }
}
