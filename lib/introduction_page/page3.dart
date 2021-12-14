import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeMode = Theme.of(context).brightness;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          height: size.height,
          decoration: BoxDecoration(
            color:
                themeMode == Brightness.light ? Colors.white : Colors.black45,
          ),
          child: Center(
              child: Stack(
            children: [
              Opacity(
                opacity: 0.2,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    color: Colors.white,
                    height: 200,
                    child: const Image(
                      image: AssetImage(
                        'images/Swedbank-icon.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                    child: Container(color: Colors.white.withOpacity(0))),
              ),
              Positioned(
                  top: 0,
                  left: 50,
                  right: 50,
                  bottom: size.height * 0.5,
                  child: const Image(
                      image: AssetImage('images/Time management.gif'))),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                        text: "           Changes to The Loan Contract",
                        style: TextStyle(fontSize: 18.0, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: '\n                               '
                                  '\nWith the self-service feature, you can:'
                                  '\nChange the payment date;'
                                  '\nChange the payment account;'
                                  '\nMake partial payments or fully redeem your assets early without any additional charges.',
                              style: TextStyle(
                                  fontSize: 12.0, color: Colors.black45))
                        ]),
                  ),
                ),
              )
            ],
          ))),
    );
  }
}
