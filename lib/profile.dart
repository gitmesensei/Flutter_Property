import 'package:flutter/material.dart';

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
                  height: 250,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white,width: 4),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: <Widget>[

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[

                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                margin:EdgeInsets.all(18.5),
                                padding:EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white,width: 4),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Icon(Icons.border_color,color: Colors.white,),
                              ),
                              Text('Edit Profile',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin:EdgeInsets.all(18.5),
                                padding:EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white,width: 4),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Icon(Icons.home,color: Colors.white,),
                              ),
                              Text('Your Home',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)

                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin:EdgeInsets.all(18.5),
                                padding:EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white,width: 4),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Icon(Icons.account_balance_wallet,color: Colors.white,),
                              ),
                              Text('Wallet',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)

                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[

                          Column(
                            children: [
                              Container(
                                margin:EdgeInsets.all(18.5),
                                padding:EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white,width: 4),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Icon(Icons.local_fire_department,color: Colors.white,),
                              ),
                              Text('Hot Prop',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)

                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin:EdgeInsets.all(18.5),
                                padding:EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white,width: 4),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Icon(Icons.star,color: Colors.white,),
                              ),
                              Text('Favourite Prop',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)

                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                margin:EdgeInsets.all(18.5),
                                padding:EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white,width: 4),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Icon(Icons.monetization_on,color: Colors.white,),
                              ),
                              Text('Cash Backs',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),)

                            ],
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ), //h

            ],
          ) ,
        )
        )
    ));
  }
}
