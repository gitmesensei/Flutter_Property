import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:property_app/profile.dart';
import 'package:property_app/spalsh.dart';

import 'favourites.dart';
import 'homepage.dart';
import 'intropage.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]).then((_){
    runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ));
  });
}


class MyApp extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyApp> {



  int bottomSelectedIndex = 0;

  PageController pageController = PageController(
    initialPage: 0,
  );

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        HomePage(),
        Favourites(),
        Profile(),
      ],
    );
  }


  void pageChanged(int index) {
    setState(() {
      this.bottomSelectedIndex = index;
    });
  }
  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 100), curve: Curves.elasticIn);
    });
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: buildPageView(),
      bottomNavigationBar: BottomNavigationBar(
        items:const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('favourites'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            title: Text('profile'),
          ),
        ],
        currentIndex: bottomSelectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: bottomTapped,
      ),
    );

  }
}
