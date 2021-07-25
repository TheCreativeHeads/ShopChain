import 'dart:ui';
import 'package:app/screens/categories/accesories.dart';
import 'package:app/screens/categories/clothing.dart';
import 'package:app/screens/categories/footgear.dart';
import 'package:app/screens/categories/pantry.dart';
import 'package:app/screens/categories/tech.dart';
import 'package:app/screens/products/accessories/1.dart';
import 'package:app/screens/products/clothing/1.dart';
import 'package:app/screens/products/footgear/1.dart';
import 'package:app/screens/products/tech/1.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:app/utilities/constants.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: 360,
            height: 640,
            child: Stack(children: [
              Container(
                width: 360,
                height: 640,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 16.0, sigmaY: 16.0)),
                      width: 360,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(35),
                          topRight: Radius.circular(35),
                          bottomLeft: Radius.circular(35),
                          bottomRight: Radius.circular(35),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color(0xFF73AEF5),
                            Color(0xFF61A4F1),
                            Color(0xFF478DE0),
                            Color(0xFF398AE5)
                          ],
                          stops: [0.1, 0.4, 0.7, 0.9],
                        ),
                      ),
                      padding: const EdgeInsets.only(
                        left: 135,
                        right: 263,
                        top: 473,
                        bottom: 412,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 10,
                top: 20,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Positioned(
                left: 92,
                top: 22,
                child: SizedBox(
                  width: 218,
                  height: 44,
                  child: Text(
                    "Shopchain",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                        shadows: [
                          Shadow(
                            color: Colors.blue.shade900,
                            offset: Offset(0, 4),
                            blurRadius: 1,
                          ),
                        ]),
                  ),
                ),
              ),
              Positioned(
                  top: 80,
                  left: 10,
                  child: Container(
                    width: 340,
                    height: 48,
                    decoration: kBoxDecorationStyle,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        hintText: 'Search',
                        hintStyle: kHintTextStyle,
                      ),
                    ),
                  )),
              Positioned(
                  left: 4,
                  top: 180,
                  child: Container(
                    width: 352,
                    height: 160,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0, 5),
                          blurRadius: 4,
                        )
                      ],
                      borderRadius: BorderRadius.circular(35),
                      color: Color(0xccffffff),
                    ),
                  )),
              Positioned(
                  left: 6,
                  top: 260,
                  child: SizedBox(
                    width: 349,
                    height: 157,
                    child: Text(
                      "\nINDIA'S FIRST EVER CRYTO BASED \n E-COMMERCE APP",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.brown.shade400,
                          fontSize: 22,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          shadows: [
                            Shadow(
                              color: Colors.brown.shade400,
                              offset: Offset(0, 1),
                              blurRadius: 1,
                            ),
                          ]),
                    ),
                  )),
              Positioned(
                  left: 4,
                  top: 345,
                  child: Container(
                    width: 352,
                    height: 285,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x3f000000),
                          offset: Offset(0, 5),
                          blurRadius: 4,
                        )
                      ],
                      borderRadius: BorderRadius.circular(35),
                      color: Color(0xccffffff),
                    ),
                  )),
              Positioned(
                left: 59,
                top: 346,
                child: Text(
                  "PRODUCTS OF THE WEEK..!!!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.brown,
                    fontSize: 18,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                alignment: Alignment(0, 0.41),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Positioned(
                        left: 35,
                        top: 400,
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => c_1()),
                              );
                            },
                            child: Container(
                              width: 120,
                              height: 110,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/icons/c_1.png')),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    offset: Offset(0, 5),
                                    blurRadius: 4,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(25),
                                color: Color(0xccffffff),
                              ),
                            ))),
                    Positioned(
                        left: 155,
                        top: 400,
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => t_1()),
                              );
                            },
                            child: Container(
                              width: 120,
                              height: 110,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/icons/t_1.png')),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    offset: Offset(0, 5),
                                    blurRadius: 4,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(25),
                                color: Color(0xccffffff),
                              ),
                            ))),
                  ],
                ),
              ),
              Container(
                alignment: Alignment(0, 0.92),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Positioned(
                        left: 35,
                        top: 440,
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => a_1()),
                              );
                            },
                            child: Container(
                              width: 120,
                              height: 110,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/icons/a_1.png')),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    offset: Offset(0, 5),
                                    blurRadius: 4,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(25),
                                color: Color(0xccffffff),
                              ),
                            ))),
                    Positioned(
                        child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => f_1()),
                              );
                            },
                            child: Container(
                              width: 120,
                              height: 110,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/icons/f_1.png')),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0x3f000000),
                                    offset: Offset(0, 5),
                                    blurRadius: 4,
                                  )
                                ],
                                borderRadius: BorderRadius.circular(25),
                                color: Color(0xccffffff),
                              ),
                            ))),
                  ],
                ),
              ),
              Align(
                  alignment: Alignment(0, -0.6),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 20.0),
                    height: 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          // ignore: deprecated_member_use
                          child: FlatButton(
                            color: Colors.transparent,
                            splashColor: Colors.black26,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => clothing()),
                              );
                            },
                            child: Text(
                              'CLOTHING',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          // ignore: deprecated_member_use
                          child: FlatButton(
                            color: Colors.transparent,
                            splashColor: Colors.black26,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => tech()),
                              );
                            },
                            child: Text(
                              'TECH',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          // ignore: deprecated_member_use
                          child: FlatButton(
                            color: Colors.transparent,
                            splashColor: Colors.black26,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => foot()),
                              );
                            },
                            child: Text(
                              'FOOTGEAR',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          // ignore: deprecated_member_use
                          child: FlatButton(
                            color: Colors.transparent,
                            splashColor: Colors.black26,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => acc()),
                              );
                            },
                            child: Text(
                              'ACCESSORIES',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          // ignore: deprecated_member_use
                          child: FlatButton(
                            color: Colors.transparent,
                            splashColor: Colors.black26,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => pantry()),
                              );
                            },
                            child: Text(
                              'PANTRY',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: kDefaultPaddin),
                          height: 2,
                          width: 30,
                        )
                      ],
                    ),
                  )),
            ])));
  }
}
