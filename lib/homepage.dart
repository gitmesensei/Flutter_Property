import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property_app/productpage.dart';
import 'package:property_app/size_config.dart';

import 'homepageflexibar.dart';
import 'navigationdrawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        color: Colors.black,
        child: SafeArea(
            child: Scaffold(
          backgroundColor: Colors.black,
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 300.0,
                  pinned: true,
                  backgroundColor: Colors.black,
                  automaticallyImplyLeading: false,
                  flexibleSpace: FlexibleSpaceBar(background: HomeBar()),
                  title: new Row(
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
                            Text(
                              'FinSell',
                              style: TextStyle(
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(color: Colors.black, blurRadius: 2)
                                  ],
                                  letterSpacing: 1),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 30.0,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.call,
                                color: Colors.white,
                                size: 30.0,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ]),
                ),
              ];
            },
            body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 0),
                    height: 140,
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.all(10),
                          width: SizeConfig.safeBlockHorizontal * 25,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white,
                                  spreadRadius: 2,
                                )
                              ]),
                          child: Center(
                            child: Text(
                              'Rent',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          width: SizeConfig.safeBlockHorizontal * 25,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(color: Colors.white, spreadRadius: 2)
                              ]),
                          child: Center(
                            child: Text(
                              'Buy',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          width: SizeConfig.safeBlockHorizontal * 25,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(color: Colors.white, spreadRadius: 2)
                              ]),
                          child: Center(
                              child: Text(
                            'Auction',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    width: double.infinity,
                    height: 280,
                    child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          child: _stuff(),
                        )
                      ],
                    ),
                  ),

                  Container(
                      width: double.infinity,
                      height: 150,
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(bottom: 10, left: 10),
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.white, width: 2)),
                                child: Icon(
                                  Icons.home,
                                  size: 60,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '   Choose Asset',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.white, width: 2)),
                                child: Icon(
                                  Icons.add_call,
                                  size: 60,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Contact Us',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(bottom: 10, right: 10),
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Colors.redAccent,
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        color: Colors.white, width: 2)),
                                child: Icon(
                                  Icons.check_circle,
                                  size: 60,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Deal Done  ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      )),

                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: _stuff(),
                  ) //horizontal listview end here
                ],
              ),
            ),
          ),
          drawer: Theme(
              data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
              child: Drawer(
                child: AppDrawer(),
              )),
        )));
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
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductPage())),
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
                                        Shadow(
                                            blurRadius: 2, color: Colors.black)
                                      ]),
                                )),
                            Padding(
                                padding: EdgeInsets.only(left: 30, right: 10),
                                child: Text(
                                  '22 sep,19',
                                  style:
                                      TextStyle(color: Colors.white, shadows: [
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
