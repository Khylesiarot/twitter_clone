import 'package:flutter/material.dart';
import 'package:twitter_clone/accounts/useracc.dart';

import '../../homepage.dart';

class DrawerS extends StatelessWidget{

  DrawerS(Useracc user,{super.key});
  
  get index => 0;

  @override
  Widget build(BuildContext context  ) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
           DrawerHeader(
            decoration: const BoxDecoration(
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
          ListTile(
            leading: const Icon(Icons.input),
            title: const Text('Welcome'),
            onTap: () => {},
          ),
          const ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            //onTap: () => {Navigator.of(context).pop()},
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            //onTap: () => {Navigator.of(context).pop()},
          ),
          const ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            //onTap: () => {Navigator.of(context).pop()},
          ),
          const ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            //onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
  


}