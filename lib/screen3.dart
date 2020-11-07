import 'package:flutter/material.dart';


class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pinkAccent,
        child:ListView(
          children: <Widget>[
            Center(
              child:Padding(
                padding: EdgeInsets.only(top: 150),
                child: Text('Enviorment and communnity',style: TextStyle(color:Colors.white,fontWeight: FontWeight.w300,fontSize: 24),),
              ),
            ),

            Center(
                child:Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage('assets/house3.jpg'),fit:BoxFit.cover),
                      border: Border.all(color: Colors.white,)

                  ),

                )
            ),
            Center(
              child:Padding(
                padding: EdgeInsets.only(top: 20,left: 30,right: 20),
                child: Text('Get Information and images from the property helping you to decide',
                  style: TextStyle(color: Colors.white),),
              ),
            ),


          ],
        )
    );
  }
}
