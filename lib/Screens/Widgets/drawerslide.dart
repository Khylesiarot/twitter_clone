import 'package:flutter/material.dart';
import 'package:twitter_clone/accounts/useracc.dart';

import '../../homepage.dart';

class DrawerS extends StatelessWidget{

  DrawerS(Useracc user,{super.key});
  
  get index => 0;

  @override
  Widget build(BuildContext context  ) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
           Padding(
             padding: const EdgeInsets.all(0.0),
             child: DrawerHeader(
            
              decoration: const BoxDecoration(
        
                border: Border(
                  bottom: BorderSide(color: Colors.white, width: .1,),
                  
                ),
                  color: Colors.white,
                  ),
              child: Row(children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                width: 50,
                height: 50,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image.network(
                      user.user[index].userThumb,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                ),
              ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(3,10,0,0),
                  child: Text( user.user[index].userName,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                ),
                
                 Padding(
                  padding: const EdgeInsets.fromLTRB(3,2,0,0),
                  child: Text( user.user[index].userMName,
                        style: const TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                ),

                   Padding(
                     padding: const EdgeInsets.only(top: 8.0),
                     child: Row(
                  children: [
                       Padding(
                  padding: const EdgeInsets.fromLTRB(2,0,0,0),
                  child: Text( user.user[index].followings.toString(),
                          style: const TextStyle(fontSize: 14),
                      ),
                ),

                 const Padding(
                  padding: EdgeInsets.fromLTRB(2,0,0,0),
                  child: Text( "Following",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                ),

                  Padding(
                  padding: const EdgeInsets.fromLTRB(4,0,0,0),
                  child: Text( user.user[index].followers.toString(),
                          style: const TextStyle(fontSize: 14),
                      ),
                ),

                 const Padding(
                  padding: EdgeInsets.fromLTRB(2,0,0,0),
                  child: Text( "Followers",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                ),
                  ],
                     ),
                   )
                

                    ],
                  )

              ],)
          ),
           ),
          
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              color:Colors.white ,
              child: Column(
                children: const [
            ListTile(
              leading: Icon(Icons.account_circle, color: Colors.black,),
              title: Text('Profile', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),
              //onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.comment,  color: Colors.black),
              title: Text('Topic',style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
              //onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.bookmark,  color: Colors.black),
              title: Text('Bookmarks', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
              //onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.featured_play_list_sharp,  color: Colors.black),
              title: Text('Lists', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
              //onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: Icon(Icons.manage_accounts_sharp,  color: Colors.black),
              title: Text('Twitter Circle', style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
              //onTap: () => {Navigator.of(context).pop()},
            )
                ],
              ),
            ),

        
          )
        ],
      ),
    );
  }
  


}