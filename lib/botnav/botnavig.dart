import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


Widget botnav(BuildContext context, TabController tabController) {
    

    return  ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
        child: TabBar(
         
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.blue,
              isScrollable: false,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.blue,
              controller: tabController,
              indicator: const UnderlineTabIndicator(
                insets: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                borderSide:
                    BorderSide(color: Colors.blue, width: 3)),
                     
                    
              tabs: const [
               Tab(icon: Icon(FontAwesomeIcons.house, size: 25)),
            Tab(
              icon: Icon(
                Icons.search,
                size: 25,

              ),
            ),
            Tab(
              icon: Icon(
                FontAwesomeIcons.microphone,
                size: 25,
              ),
            ),
            Tab(
              icon: Icon(
                FontAwesomeIcons.bell,
                size: 25,
              ),
            ),
              Tab(
              icon: Icon(
                FontAwesomeIcons.envelope,
                size: 25,
              ),
            ),
              ],
              ),

            
      );}
      
      