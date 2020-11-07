import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {

  int _current = 0;
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
      children: <Widget>[Screen1(), Screen2(), Screen3(), Screen4(), Screen5()],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
          child: Scaffold(
            body: ListView(
              children: <Widget>[
                Stack(
                  children: <Widget>[      Stack(
                    children: <Widget>[
                      Container(
                        height: 250,
                        child: buildPageView(),
                      ),
                      Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 220),
                            width: 150,
                            height: 15,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 150),
                                  height: bottomSelectedIndex == 0 ? 12 : 8,
                                  width: bottomSelectedIndex == 0 ? 12 : 8,
                                  decoration: BoxDecoration(
                                      color: bottomSelectedIndex == 0
                                          ? Colors.white
                                          : Colors.white70,
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 150),
                                  height: bottomSelectedIndex == 1 ? 12 : 8,
                                  width: bottomSelectedIndex == 1 ? 12 : 8,
                                  decoration: BoxDecoration(
                                      color: bottomSelectedIndex == 1
                                          ? Colors.white
                                          : Colors.white70,
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 150),
                                  height: bottomSelectedIndex == 2 ? 12 : 8,
                                  width: bottomSelectedIndex == 2 ? 12 : 8,
                                  decoration: BoxDecoration(
                                      color: bottomSelectedIndex == 2
                                          ? Colors.white
                                          : Colors.white70,
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 150),
                                  height: bottomSelectedIndex == 3 ? 12 : 8,
                                  width: bottomSelectedIndex == 3 ? 12 : 8,
                                  decoration: BoxDecoration(
                                      color: bottomSelectedIndex == 3
                                          ? Colors.white
                                          : Colors.white70,
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 150),
                                  height: bottomSelectedIndex == 4 ? 12 : 8,
                                  width: bottomSelectedIndex == 4 ? 12 : 8,
                                  decoration: BoxDecoration(
                                      color: bottomSelectedIndex == 4
                                          ? Colors.white
                                          : Colors.white70,
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.arrow_back_ios),
                            color: Colors.white,
                            onPressed: ()=>Navigator.pop(context)
                        ),
                        IconButton(
                          icon: Icon(Icons.favorite),
                          color: Colors.pink,
                          onPressed: () {},
                        )
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                      Row(
                        children: [

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
                                ' Rajiv Sharma',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600

                                )
                              )),
                        ],
                      ),

                      Padding(
                          padding: EdgeInsets.only(left: 30, right: 10),
                          child: Text(
                            '        22 sep,19',
                            style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.w600
                          )),
                      )
              ],
                  ),
                ),

              ],
            ),
          )
      ),
    );
  }

  Widget Screen1() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/b6.jpg'),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4), BlendMode.darken)),
      ),
    );
  }

  Widget Screen2() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/b3.jpg'),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4), BlendMode.darken)),
      ),
    );
  }

  Widget Screen3() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/b2.jpg'),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4), BlendMode.darken)),
      ),
    );
  }

  Widget Screen4() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/b4.jpg'),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4), BlendMode.darken)),
      ),
    );
  }

  Widget Screen5() {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/b5.jpg'),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.4), BlendMode.darken)),
      ),
    );
  }
}
