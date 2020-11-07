import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      child:ListView(
        children: <Widget>[
          Center(
            child:Padding(
                padding: EdgeInsets.only(top: 150),
              child: Text('Buy and Sell Property',style: TextStyle(color:Colors.white,fontWeight: FontWeight.w300,fontSize: 24),),
          ),
          ),

          Center(
            child:Container(
              margin: EdgeInsets.only(top: 20),
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(image: AssetImage('assets/house1.jpg'),fit: BoxFit.cover),
                border: Border.all(color: Colors.white,)

              ),

            )
          ),

          Center(
            child:Padding(
              padding: EdgeInsets.only(top: 20,left: 30,right: 20),
              child: Text('Buy, sell and auction your property with the help of our experts',
              style: TextStyle(color: Colors.white),),
            ),
          ),


        ],
      )

    );
  }
}
