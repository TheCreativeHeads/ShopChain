import 'package:app/screens/homepage.dart';
import 'package:app/utilities/constants.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class logon extends StatelessWidget {
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
                  top: 200,
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
                          Icons.email,
                          color: Colors.white,
                        ),
                        hintText: 'Enter your Email',
                        hintStyle: kHintTextStyle,
                      ),
                    ),
                  )),
              Positioned(
                  top: 270,
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
                          Icons.lock,
                          color: Colors.white,
                        ),
                        hintText: 'Enter your Password',
                        hintStyle: kHintTextStyle,
                      ),
                    ),
                  )),
              Positioned(
                left: 80,
                top: 80,
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: Text(
                    "Sign Up",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w700,
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
                left: 105,
                top: 350,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                    padding: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                  ),
                  child: Text('Sign Up',
                      style: TextStyle(color: Colors.blue, fontSize: 20)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => home()),
                    );
                  },
                ),
              ),
              Positioned(
                  left: 163,
                  top: 420,
                  child: Text(
                    '- OR -',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
              Positioned(
                left: 59,
                top: 460,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0)),
                    padding: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
                  ),
                  child: Text('Skip To Homepage',
                      style: TextStyle(color: Colors.blue, fontSize: 20)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => home()),
                    );
                  },
                ),
              ),
            ])));
  }
}
