import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property_app/intropage.dart';
import 'package:property_app/size_config.dart';


class SplashScreen extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<SplashScreen>  with SingleTickerProviderStateMixin{



  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    startTime();

    controller =
        AnimationController(duration: Duration(seconds: 4), vsync: this);
  }
  void navigationPage() async {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => IntroPage()));

  }



  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    controller.forward(from: 0.0);
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
            body:Container(
              child:Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 150,
                        width: 150,
                        padding: EdgeInsets.only(left: 10,right: 10,bottom: 20),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 0.0,
                                color: Colors.white,
                                style: BorderStyle.solid),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 1.0,
                                  color: Colors.white24,
                                  spreadRadius: 2.0)
                            ],
                            image: DecorationImage(image: AssetImage('logo.png'),fit: BoxFit.cover)
                        ),
                      ),
                      Center(child:Container(
                        margin: EdgeInsets.only(left: 20,right: 20,top: 10),
                        child: Text('FinSell',style: TextStyle(color: Colors.white,fontSize: 32,fontWeight: FontWeight.bold,letterSpacing:2,shadows: [
                          Shadow(color: Colors.black45,blurRadius: 2,)
                        ]),),
                      ),
                      )


                    ],
                  )
              ),
            )
        )
    );
  }
}