
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property_app/screen1.dart';
import 'package:property_app/screen2.dart';
import 'package:property_app/screen3.dart';

import 'login.dart';



class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {

  bool isActive = true;

  int bottomSelectedIndex = 0;

  PageController pageController = PageController(
    initialPage: 0,
  );

  void pageChanged(int index) {
    setState(() {
      this.bottomSelectedIndex = index;
    });
  }
  void bottomTapped(int index) {
    setState(() {
      bottomSelectedIndex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 100), curve: Curves.easeIn);



    });
  }

  Widget buildPageView() {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        pageChanged(index);
      },
      children: <Widget>[
        Screen1(),
        Screen2(),
        Screen3(),
      ],
    );
  }






  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body:Stack(
        children: <Widget>[

            buildPageView(),

          Container(
            margin: EdgeInsets.only(top: 720,left: 20,right: 20),
            width: double.infinity,
            height: 80,
            child: Row(

              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[

                RaisedButton(onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                },
                  color: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  child: Text('skip',style: TextStyle(color: Colors.lightBlue,fontSize: 20)),
                ),

              ],
            ),
          ),

          Center(child:
          Container(
            margin: EdgeInsets.only(top: 550),
            width: 150,
            height: 10,
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                AnimatedContainer(
                  duration: Duration(milliseconds: 150),
                  height:bottomSelectedIndex==0?12 : 8,
                  width: bottomSelectedIndex==0?12 : 8,
                  decoration: BoxDecoration(
                    color: bottomSelectedIndex==0? Colors.white :Colors.grey,
                    borderRadius: BorderRadius.circular(12)
                  ),

                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 150),
                  height:bottomSelectedIndex==1?12 : 8,
                  width: bottomSelectedIndex==1?12 : 8,
                  decoration: BoxDecoration(
                      color: bottomSelectedIndex==1? Colors.white :Colors.grey,
                      borderRadius: BorderRadius.circular(12)
                  ),

                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 150),
                  height:bottomSelectedIndex==2?12 : 8,
                  width: bottomSelectedIndex==2?12 : 8,
                  decoration: BoxDecoration(
                      color: bottomSelectedIndex==2? Colors.white :Colors.grey,
                      borderRadius: BorderRadius.circular(12)
                  ),

                ),



              ],
            ) ,
          )
          )



        ],
      )
    )

    );
  }
}
