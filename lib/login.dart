import 'package:flutter/material.dart';
import 'package:property_app/register.dart';
import 'main.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/log.jpg'), fit: BoxFit.cover,colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken)),
              ),
              child:ListView(
                children: <Widget>[
                  Center(
                    child:   Container(
                      margin: EdgeInsets.only(top: 120,),

                      child: Text(
                        'FinSell',
                        style: TextStyle(
                            color: Colors.white, fontSize: 30,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 40),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                          color: Colors.white, fontSize: 24),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 2)),
                          focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 2)) ,
                          hintText: ' enter your name',
                          hintStyle: TextStyle(color: Colors.white,),
                          icon: Icon(Icons.person,color: Colors.white,),
                        ),
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w300),
                        keyboardType: TextInputType.text,
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 2)),
                          focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.white,width: 2)) ,
                          hintText: ' enter your email address',
                          hintStyle: TextStyle(color: Colors.white,),
                          icon: Icon(Icons.mail,color: Colors.white,),
                        ),
                        style: TextStyle(
                            color: Colors.lightBlue, fontWeight: FontWeight.w300),
                        keyboardType: TextInputType.emailAddress,
                      )
                  ),
                  Center(
                    child:Padding(padding: EdgeInsets.only(top: 40),child:
                    ButtonTheme(
                      minWidth: 20,
                      height: 10,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp()),
                          );
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        color: Colors.white,
                        textColor: Colors.white,
                        child: Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 2.0, vertical: 6.0),
                          child: Text("continue",
                              style: TextStyle(color: Colors.lightBlue,fontSize: 20)),
                        ),
                      ),
                    ),
                    )
                  ),

                  Center(
                    child:   Container(
                      margin: EdgeInsets.only(top: 20,),
                      child: Text(
                        'forgot password ?',
                        style: TextStyle(
                            color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  Center(
                    child: InkWell(
                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder:(context)=>Register())),
                      child: Container(
                      margin: EdgeInsets.only(top: 20,),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[

                          Text(
                            'New Here ?',
                            style: TextStyle(
                                color: Colors.white, fontSize: 16),
                          ),
                          Text(
                            'Sign Up Now !',
                            style: TextStyle(
                                color: Colors.red, fontSize: 18),
                          ),

                        ],
                      )
                    ),
                    )
                  ),


                ],
              )),
        )
    );
  }
}
