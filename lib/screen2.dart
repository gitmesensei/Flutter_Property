import 'package:flutter/material.dart';


class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purpleAccent,
        child:ListView(
          children: <Widget>[

            Center(
              child:Padding(
                padding: EdgeInsets.only(top: 150),
                child: Text('Property Valuation',style: TextStyle(color:Colors.white,fontWeight: FontWeight.w300,fontSize: 24),),
              ),
            ),

            Center(
                child:Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/house2.jpg'),fit:BoxFit.cover),
                      border: Border.all(color: Colors.white,)

                  ),

                )
            ),

            Center(
              child:Padding(
                padding: EdgeInsets.only(top: 20,left: 30,right: 20),
                child: Text('Get Your Property valuation from our experts and start biding',
                  style: TextStyle(color: Colors.white),),
              ),
            ),


          ],
        )
    );
  }
}
