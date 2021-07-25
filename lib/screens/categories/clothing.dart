import 'dart:ui';

import 'package:app/screens/products/clothing/1.dart';
import 'package:app/screens/products/clothing/2.dart';
import 'package:app/screens/products/clothing/3.dart';
import 'package:app/screens/products/clothing/4.dart';
import 'package:app/screens/products/clothing/5.dart';
import 'package:app/screens/products/clothing/6.dart';
import 'package:app/utilities/constants.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class clothing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 360,
          height: 640,
          child: Stack(
            children: [
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
              Container(
                alignment: Alignment(0, -0.45),
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
                              width: 150,
                              height: 150,
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
                                MaterialPageRoute(builder: (context) => c_2()),
                              );
                            },
                            child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/icons/c_2.png')),
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
                alignment: Alignment(0, 0.2),
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
                                MaterialPageRoute(builder: (context) => c_3()),
                              );
                            },
                            child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/icons/c_3.png')),
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
                                MaterialPageRoute(builder: (context) => c_4()),
                              );
                            },
                            child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/icons/c_4.png')),
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
                alignment: Alignment(0, 0.85),
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
                                MaterialPageRoute(builder: (context) => c_5()),
                              );
                            },
                            child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/icons/c_5.png')),
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
                                MaterialPageRoute(builder: (context) => c_6()),
                              );
                            },
                            child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/icons/c_6.png')),
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
            ],
          )),
    );
  }
}
