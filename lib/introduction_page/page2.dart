import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
                  alignment: Alignment.bottomCenter,
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
                      image: AssetImage('images/Resume folder.gif'))),
              Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      text: "How to apply",
                      style: TextStyle(fontSize: 18.0, color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                            text: '\n                               '
                                '\nFill in the application in the internet bank.'
                                '\nWe will inform you about the decision by phone, a text message or an internet bank message.'
                                '\nSign the contract in the internet bank. Money will be transferred to your current account within a matter of minutes.'
                                '\nCongratulations! You will soon be the owner of a car. Register the car in your name in 30 days.',
                            style: TextStyle(
                                fontSize: 12.0, color: Colors.black45))
                      ]),
                ),

                // Text.rich(
                //
                //   style: TextStyle(
                //     fontWeight: FontWeight.normal,
                //   ),
                // ),
              )
            ],
          ))),
    );
  }
}
