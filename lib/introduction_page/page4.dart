import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
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
                      image: AssetImage('images/Electric car.gif'))),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                        text: "                 Choose the right Car",
                        style: TextStyle(fontSize: 19.0, color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: '\n                               '
                                  '\nChoosing electric, hybrid or other low CO2 emission car is your chance to be more environment friendly. We have special leasing offer for eco-friendly cars.'
                                  '\n                               '
                                  '\nCarpooling can reduce your environmental footprint by 3-4 times. Start small - give a ride to a colleague and try to do carpooling as often as you can.'
                                  '\n                               '
                                  '\nWalk, bike or use public transportation when possible. By the way, 30 minutes of fast-paced walk a day is a good workout and a great mood booster',
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
