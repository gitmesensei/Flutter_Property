import 'package:flutter/material.dart';
import 'package:property_app/productpage.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
            backgroundColor: Colors.black,
            automaticallyImplyLeading: false,
            elevation: 0.0,
            title:  new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: () =>
                            Scaffold.of(context).openDrawer(),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    onPressed: () {},
                  ),
                ]),
          ),
          body:SingleChildScrollView(
            child: Column(
            children: <Widget>[

              Center(
                child:Container(
                  margin: EdgeInsets.only(top: 40),
                 width: 190,
                 height: 190,
                 decoration: BoxDecoration(
                   border: Border.all(color: Colors.white,width: 4),
                     shape: BoxShape.circle,
                     image: DecorationImage(
                         image: AssetImage('assets/face1.jpg'),fit: BoxFit.cover
                     )
                 ),
               ),
              ),
              Center(
                child:Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Text('Rajiv Sharma',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 24),),
                ),
              ),
              Center(
                child:Container(
                  margin: EdgeInsets.only(top: 10,bottom: 20),
                  child: Text('acosdemegatech@gmail.com',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 18),),
                ),
              ),
              Center(
                child:Container(
                  margin: EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 20),
                  height: 190,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white,width: 4),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: <Widget>[

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[

                          Container(
                            margin:EdgeInsets.all(18.5),
                            padding:EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white,width: 4),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(Icons.border_color,color: Colors.white,),
                          ),
                          Container(
                            margin:EdgeInsets.all(18.5),
                            padding:EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white,width: 4),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(Icons.home,color: Colors.white,),
                          ),
                          Container(
                            margin:EdgeInsets.all(18.5),
                            padding:EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white,width: 4),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(Icons.account_balance_wallet,color: Colors.white,),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[

                          Container(
                            margin:EdgeInsets.all(18.5),
                            padding:EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white,width: 4),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(Icons.offline_bolt,color: Colors.white,),
                          ),
                          Container(
                            margin:EdgeInsets.all(18.5),
                            padding:EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white,width: 4),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(Icons.star,color: Colors.white,),
                          ),
                          Container(
                            margin:EdgeInsets.all(18.5),
                            padding:EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white,width: 4),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(Icons.monetization_on,color: Colors.white,),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                child: _stuff(),
              )//h

            ],
          ) ,
        )
        )
    ));
  }
  Widget _stuff() {

    return Wrap(
      children: <Widget>[


        Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/b2.jpg'), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2)]),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.end,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[

                    InkWell(
                      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductPage())),
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(10),
                              width: 50,
                              height: 50,
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
                                padding: EdgeInsets.only(left: 4),
                                child: Text(
                                  'Rajiv Sharma',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      shadows: [
                                        Shadow(blurRadius: 2, color: Colors.black)
                                      ]),
                                )),
                            Padding(
                                padding: EdgeInsets.only(left: 30, right: 10),
                                child: Text(
                                  '22 sep,19',
                                  style: TextStyle(color: Colors.white, shadows: [
                                    Shadow(blurRadius: 2, color: Colors.black)
                                  ]),
                                )),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            top: 100, left: 10, bottom: 10, right: 10),
                        child: Row(
                          children: <Widget>[
                            RaisedButton.icon(
                              onPressed: () {},
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Colors.lightBlue,
                                size: 20,
                              ),
                              label: Text(
                                'For Buy,',
                                style: TextStyle(
                                    color: Colors.lightBlue, fontSize: 14),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40, right: 0),
                              child: Text(
                                'Rohini,Delhi',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    shadows: [
                                      Shadow(blurRadius: 2, color: Colors.black)
                                    ]),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ],
            )), //finish

        Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/b3.jpg'), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2)]),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.end,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.pinkAccent,
                                border: Border.all(
                                    width: 2.0,
                                    color: Colors.white,
                                    style: BorderStyle.solid),
                                image: DecorationImage(
                                    image: AssetImage('assets/face2.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Text(
                                'Akash walia',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    shadows: [
                                      Shadow(blurRadius: 2, color: Colors.black)
                                    ]),
                              )),
                          Padding(
                              padding: EdgeInsets.only(left: 30, right: 10),
                              child: Text(
                                '22 sep,19',
                                style: TextStyle(color: Colors.white, shadows: [
                                  Shadow(blurRadius: 2, color: Colors.black)
                                ]),
                              )),
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            top: 100, left: 10, bottom: 10, right: 10),
                        child: Row(
                          children: <Widget>[
                            RaisedButton.icon(
                              onPressed: () {},
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Colors.lightBlue,
                                size: 20,
                              ),
                              label: Text(
                                'For Buy,',
                                style: TextStyle(
                                    color: Colors.lightBlue, fontSize: 14),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40, right: 0),
                              child: Text(
                                'Rohini,Delhi',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    shadows: [
                                      Shadow(blurRadius: 2, color: Colors.black)
                                    ]),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ],
            )),

        Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/b4.jpg'), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2)]),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.end,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.pinkAccent,
                                border: Border.all(
                                    width: 2.0,
                                    color: Colors.white,
                                    style: BorderStyle.solid),
                                image: DecorationImage(
                                    image: AssetImage('assets/face3.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Text(
                                'Akansha Singh',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    shadows: [
                                      Shadow(blurRadius: 2, color: Colors.black)
                                    ]),
                              )),
                          Padding(
                              padding: EdgeInsets.only(left: 30, right: 10),
                              child: Text(
                                '22 sep,19',
                                style: TextStyle(color: Colors.white, shadows: [
                                  Shadow(blurRadius: 2, color: Colors.black)
                                ]),
                              )),
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            top: 100, left: 10, bottom: 10, right: 10),
                        child: Row(
                          children: <Widget>[
                            RaisedButton.icon(
                              onPressed: () {},
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Colors.lightBlue,
                                size: 20,
                              ),
                              label: Text(
                                'For Buy,',
                                style: TextStyle(
                                    color: Colors.lightBlue, fontSize: 14),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40, right: 0),
                              child: Text(
                                'Rohini,Delhi',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    shadows: [
                                      Shadow(blurRadius: 2, color: Colors.black)
                                    ]),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ],
            )),

        Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/b5.jpg'), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2)]),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.end,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.pinkAccent,
                                border: Border.all(
                                    width: 2.0,
                                    color: Colors.white,
                                    style: BorderStyle.solid),
                                image: DecorationImage(
                                    image: AssetImage('assets/face4.png'),
                                    fit: BoxFit.cover)),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Text(
                                'Asha Shah',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    shadows: [
                                      Shadow(blurRadius: 2, color: Colors.black)
                                    ]),
                              )),
                          Padding(
                              padding: EdgeInsets.only(left: 30, right: 10),
                              child: Text(
                                '22 sep,19',
                                style: TextStyle(color: Colors.white, shadows: [
                                  Shadow(blurRadius: 2, color: Colors.black)
                                ]),
                              )),
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            top: 100, left: 10, bottom: 10, right: 10),
                        child: Row(
                          children: <Widget>[
                            RaisedButton.icon(
                              onPressed: () {},
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Colors.lightBlue,
                                size: 20,
                              ),
                              label: Text(
                                'For Buy,',
                                style: TextStyle(
                                    color: Colors.lightBlue, fontSize: 14),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40, right: 0),
                              child: Text(
                                'Rohini,Delhi',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    shadows: [
                                      Shadow(blurRadius: 2, color: Colors.black)
                                    ]),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ],
            )),

        Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/b6.jpg'), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2)]),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.end,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.pinkAccent,
                                border: Border.all(
                                    width: 2.0,
                                    color: Colors.white,
                                    style: BorderStyle.solid),
                                image: DecorationImage(
                                    image: AssetImage('assets/face5.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Text(
                                'Karishma ',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    shadows: [
                                      Shadow(blurRadius: 2, color: Colors.black)
                                    ]),
                              )),
                          Padding(
                              padding: EdgeInsets.only(left: 30, right: 10),
                              child: Text(
                                '22 sep,19',
                                style: TextStyle(color: Colors.white, shadows: [
                                  Shadow(blurRadius: 2, color: Colors.black)
                                ]),
                              )),
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            top: 100, left: 10, bottom: 10, right: 10),
                        child: Row(
                          children: <Widget>[
                            RaisedButton.icon(
                              onPressed: () {},
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Colors.lightBlue,
                                size: 20,
                              ),
                              label: Text(
                                'For Buy,',
                                style: TextStyle(
                                    color: Colors.lightBlue, fontSize: 14),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40, right: 0),
                              child: Text(
                                'Rohini,Delhi',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    shadows: [
                                      Shadow(blurRadius: 2, color: Colors.black)
                                    ]),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ],
            )),

        Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/b8.jpg'), fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 2)]),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.end,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            width: 50,
                            height: 50,
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
                              padding: EdgeInsets.only(left: 4),
                              child: Text(
                                'Alok Nath',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    shadows: [
                                      Shadow(blurRadius: 2, color: Colors.black)
                                    ]),
                              )),
                          Padding(
                              padding: EdgeInsets.only(left: 30, right: 10),
                              child: Text(
                                '22 sep,19',
                                style: TextStyle(color: Colors.white, shadows: [
                                  Shadow(blurRadius: 2, color: Colors.black)
                                ]),
                              )),
                        ],
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            top: 100, left: 10, bottom: 10, right: 10),
                        child: Row(
                          children: <Widget>[
                            RaisedButton.icon(
                              onPressed: () {},
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              icon: Icon(
                                Icons.shopping_cart,
                                color: Colors.lightBlue,
                                size: 20,
                              ),
                              label: Text(
                                'For Buy,',
                                style: TextStyle(
                                    color: Colors.lightBlue, fontSize: 14),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 40, right: 0),
                              child: Text(
                                'Rohini,Delhi',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    shadows: [
                                      Shadow(blurRadius: 2, color: Colors.black)
                                    ]),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ],
            ))
      ],
    );
  }
}
