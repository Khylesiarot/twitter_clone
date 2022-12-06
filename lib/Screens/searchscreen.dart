// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_clone/homepage.dart';

class SearchScreen extends StatelessWidget{
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
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
          title: Container(
            child: TextField(
                  decoration: InputDecoration(
                    filled: true,
            
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(
                    color: Colors.black,
                    
                    ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 1,
                    ),
                ),
                hintText: 'Search Twitter',
              ),
                  )
            ),
          actions: [
            IconButton( 
              onPressed: () => {},
              icon: const FaIcon(FontAwesomeIcons.cog),
              iconSize: 20,
              color: Colors.black,
            )
          ],
        ),
      body: Text("amen"),
    );
    
  }

  
}