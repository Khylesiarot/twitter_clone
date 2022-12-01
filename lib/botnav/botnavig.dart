import 'package:flutter/material.dart';

Widget botnav(BuildContext context) {
    return const DefaultTabController(
        length: 5,
        child: TabBar(
          indicatorWeight: 3,
          unselectedLabelColor: Colors.blueAccent,
          labelColor: Colors.blue,
          indicatorColor: Color.fromARGB(255, 21, 101, 192),
          tabs: [
            Tab(icon: Icon(Icons.home, size: 25)),
            Tab(
              icon: Icon(
                Icons.search,
                size: 25,

              ),
            ),
            Tab(
              icon: Icon(
                Icons.mic_none_rounded,
                size: 25,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.notifications_outlined,
                size: 25,
              ),
            ),
              Tab(
              icon: Icon(
                Icons.mail_outlined,
                size: 25,
              ),
            ),
          ],
        ));}