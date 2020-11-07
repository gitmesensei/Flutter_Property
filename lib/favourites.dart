import 'package:flutter/material.dart';

import 'navigationdrawer.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                    Text('Favourites',style: TextStyle(color: Colors.white),),
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

        body:ListView(
          children: <Widget>[

            Center(
              child:
              Container(
                margin: EdgeInsets.only(left: 20,right: 20),
                child: Column(
                  children: <Widget>[

                    Container(
                      width: 140,
                        height: 140,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white,width: 2),
                        image: DecorationImage(
                            image: AssetImage('assets/heart.gif'))
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Center(
                        child: Text('Favourites',
                          style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                    )

                  ],
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              child: _stuff(),
            ),
          ],
        ),
        drawer: Theme(
            data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
            child: Drawer(
              child: AppDrawer(),
            )),
      ),
    );
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
                                    image: AssetImage('assets/b1.jpg'),
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
                                    image: AssetImage('assets/b2.jpg'),
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
                                    image: AssetImage('assets/b3.jpg'),
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
                                    image: AssetImage('assets/b4.jpg'),
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
                                    image: AssetImage('assets/b5.jpg'),
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
                                    image: AssetImage('assets/b6.jpg'),
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
