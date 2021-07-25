import 'dart:ui';

import 'package:app/screens/products/payment.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class f_3 extends StatelessWidget {
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
                  left: 112,
                  top: 100,
                  child: Container(
                    width: 137,
                    height: 137,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icons/f_3.png')),
                      borderRadius: BorderRadius.circular(35),
                      color: Color(0x4cffffff),
                    ),
                  )),
              Positioned(
                  left: 0,
                  top: 280,
                  child: Container(
                    width: 360,
                    height: 360,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.shade700,
                          offset: Offset(0, 5),
                          blurRadius: 4,
                        )
                      ],
                      borderRadius: BorderRadius.circular(35),
                      color: Colors.blue.shade700,
                    ),
                  )),
              Container(
                alignment: Alignment(0, 0),
                child: Text(
                  'Mens Footwear',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
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
              Container(
                alignment: Alignment(0, 0.1),
                child: Text(
                  'ETH 0.0074',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
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
              Container(
                alignment: Alignment(0, 0.5),
                child: Text(
                  'Grab this footwear for this monsoon season.Grippy,Strong and water resistant.With 2 monsoon season warranty',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue.shade900,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0)),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 45, vertical: 20),
                              ),
                              child: Text('Cart',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: const Text(
                                        'This feature will be available soon'),
                                    duration:
                                        const Duration(milliseconds: 1500),
                                    width: 240.0, // Width of the SnackBar.
                                    padding: const EdgeInsets.symmetric(
                                      horizontal:
                                          5.0, // Inner padding for SnackBar content.
                                    ),
                                    behavior: SnackBarBehavior.floating,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            width: 90,
                          ),
                          Container(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue.shade900,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.0)),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 45, vertical: 20),
                              ),
                              child: Text('Pay',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20)),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => payment()),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 29,
                  )
                ],
              )
            ])));
  }
}
