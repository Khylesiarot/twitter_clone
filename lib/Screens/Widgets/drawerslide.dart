import 'package:flutter/material.dart';

class DrawerS extends StatelessWidget{

  @override
  Widget build(BuildContext context , ) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.green,
                ),
            child: Text(
              'Side menu',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
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