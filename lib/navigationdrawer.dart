import 'dart:ui';

import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.transparent),
        ),
      ),
      Container(
          decoration: BoxDecoration(
            border: Border(right: BorderSide(color: Colors.white,width: 0.5))
          ),
          child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.pinkAccent,
                        border: Border.all(
                            width: 2.0,
                            color: Colors.white,
                            style: BorderStyle.solid),
                        image: DecorationImage(
                            image: AssetImage('assets/face1.jpg'),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      'Yog Sharma',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Text(
                      'yog2328@gmail.com',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            title: Text(
              'favourites',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'recent booking',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.check_circle,
              color: Colors.white,
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'inquiry',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.person_pin,
              color: Colors.white,
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'submit offer',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.publish,
              color: Colors.white,
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'logout',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          Divider(
            height: 2,
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 20),
            child: Text(
              'communicate',
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            title: Text(
              'contact us',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.mail,
              color: Colors.white,
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'privacy policy',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.lock,
              color: Colors.white,
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'help',
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(
              Icons.help,
              color: Colors.white,
            ),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      )
      )]);
  }
}
