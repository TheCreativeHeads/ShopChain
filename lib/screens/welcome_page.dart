import 'dart:ui';

import 'package:app/screens/login.dart';

import 'package:flutter/material.dart';

// ignore: camel_case_types

// ignore: camel_case_types
class welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        width: 360,
        height: 640,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Container(
              width: 360,
              height: 640,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
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
                        colors: [Colors.orange, Colors.white, Colors.green],
                      ),
                    ),
                    padding: const EdgeInsets.only(
                      left: 136,
                      right: 209,
                      top: 259,
                      bottom: 262,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 18.5,
              top: 22,
              child: Container(
                width: 361,
                height: 44,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 218,
                      height: 44,
                      child: Text(
                        "Shopchain",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 38,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 100,
              child: SizedBox(
                width: 342,
                height: 560,
                child: Text(
                  "Welcome\nto\nIndia’s first \never \nBlock-Chain\nbased\nE-CommerceApp",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.lightBlueAccent.shade700,
                    fontSize: 38,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 55,
              top: 500,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.indigo.shade400,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 25),
                ),
                child: Text('REGISTER'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => logon()),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
