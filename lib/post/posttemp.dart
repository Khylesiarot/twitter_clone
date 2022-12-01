import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:twitter_clone/post/tweets.dart';



  Widget buildTweets(BuildContext context, Tweets tweets, int index) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 40,
              height: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(
                  tweets.tweets[index].userThumb,
                  height: 40,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          tweets.tweets[index].userName,
                          style: const TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0),
                          child: Text(
                            tweets.tweets[index].userMName + " • " + tweets.tweets[index].timeT,
                            style: const TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(
                        tweets.tweets[index].tweetText,
                        style: const TextStyle(fontSize: 16.0),
                      ),
                    ),
                    tweets.tweets[index].tweetImage != ''
                        ? Material(
                            borderRadius: BorderRadius.circular(10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Image.network(
                                tweets.tweets[index].tweetImage,
                                width: double.infinity,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          )
                        : const SizedBox(height: 0.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 0.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                FaIcon(FontAwesomeIcons.heart, size: 20,),

                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text(tweets.tweets[index].commentCount
                                      .toString()),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                FaIcon(FontAwesomeIcons.retweet, size: 20,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text(tweets.tweets[index].retweetCount
                                      .toString()),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                 FaIcon(FontAwesomeIcons.comment, size: 20,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5.0),
                                  child: Text(tweets.tweets[index].loveCount
                                      .toString()),
                                ),
                              ],
                            ),
                          ),
                          const Expanded(
                            child: Icon(
                              Icons.share,
                              color: Colors.grey,
                              size: 20.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

