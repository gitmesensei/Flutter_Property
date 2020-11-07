import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomeBar extends StatelessWidget {

  final double appBarHeight = 66.0;

  const HomeBar();

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery
        .of(context)
        .padding
        .top;

    return Container(
      padding: new EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + appBarHeight,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/b1.jpg'),fit: BoxFit.fill, colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4), BlendMode.darken))
        ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[

              Center(
                child:Padding(padding: EdgeInsets.only(bottom: 30),
                child: Text('ROAD TO YOUR \n\n         DREAM Home',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize:24, shadows: [
                    Shadow(
                        color:Colors.black,
                      blurRadius: 20
                    )
                  ],fontWeight: FontWeight.bold,letterSpacing: 5,

                  ),

                ),
              )
              ),
              Center(
                  child:Container(padding: EdgeInsets.only(top: 20,left: 80,right: 80),
                      margin: EdgeInsets.only(bottom: 40),
                      height: 50,
                      child: RaisedButton(onPressed: (){

                      },
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                        color: Colors.white,
                        child: Center(
                          child: Text('What are you looking for ?'),
                        ),
                      )
                  )
              ),



            ],
      ),
    );
  }
}