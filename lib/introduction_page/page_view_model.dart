import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

PageViewModel page1(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return PageViewModel(
    title: "Have a great ride in Your new Ride",
    bodyWidget: Center(
        child: Stack(
      children: [
        Opacity(
          opacity: .08,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              color: Colors.white,
              height: 200,
              width: 200,
              child: const Image(
                image: AssetImage(
                  'images/Swedbank-icon.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
                style: TextStyle(fontSize: 18.0, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text:
                          '\nCar loan is an incredibly convenient and fast solution.'
                          '\nNo down payment required. '
                          '\nAnnual interest rate from 7,9 percent.'
                          '\nCasco Insurance is recommended, but not mandatory.'
                          '\nMoney is transferred to the account immediately after the conclusion of the contract',
                      style: TextStyle(fontSize: 14.0, color: Colors.black87))
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
    )),
    image: const Image(image: AssetImage('images/Price.gif')),
  );
}

PageViewModel page2(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return PageViewModel(
    title: "Apply in few simple steps",
    bodyWidget: Center(
        child: Stack(
      children: [
        Opacity(
          opacity: .08,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Colors.white,
              height: 200,
              width: 200,
              child: const Image(
                image: AssetImage(
                  'images/Swedbank-icon.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
                style: TextStyle(fontSize: 18.0, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: '\nFill in the application in the internet bank.'
                          '\nWe will inform you about the decision by phone, a text message or an internet bank message.'
                          '\nSign the contract in the internet bank. Money will be transferred to your current account within a matter of minutes.'
                          '\nCongratulations! You will soon be the owner of a car. Register the car in your name in 30 days.',
                      style: TextStyle(fontSize: 14.0, color: Colors.black87))
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
    )),
    image: const Image(image: AssetImage('images/Resume folder.gif')),
  );
}

PageViewModel page3(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return PageViewModel(
    title: "Change The Loan Contract Anytime",
    bodyWidget: Center(
        child: Stack(
      children: [
        Opacity(
          opacity: .08,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              color: Colors.white,
              height: 200,
              width: 200,
              child: const Image(
                image: AssetImage(
                  'images/Swedbank-icon.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
                style: TextStyle(fontSize: 18.0, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: '\nWith the self-service feature, you can:'
                          '\nChange the payment date;'
                          '\nChange the payment account;'
                          '\nMake partial payments or fully redeem your assets early without any additional charges.',
                      style: TextStyle(fontSize: 14.0, color: Colors.black87))
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
    )),
    image: const Image(image: AssetImage('images/Time management.gif')),
  );
}

PageViewModel page4(BuildContext context) {
  final size = MediaQuery.of(context).size;
  return PageViewModel(
    title: "Choose The Right Car",
    bodyWidget: Center(
        child: Stack(
      children: [
        Opacity(
          opacity: .08,
          child: Align(
            alignment: Alignment.centerRight,
            child: Container(
              color: Colors.white,
              height: 200,
              width: 200,
              child: const Image(
                image: AssetImage(
                  'images/Swedbank-icon.png',
                ),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
                style: TextStyle(fontSize: 18.0, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text:
                          '\nChoosing electric, hybrid or other low CO2 emission car is your chance to be more environment friendly. We have special leasing offer for eco-friendly cars.'
                          '\n                               '
                          '\nCarpooling can reduce your environmental footprint by 3-4 times. Start small - give a ride to a colleague and try to do carpooling as often as you can.'
                          '\n                               '
                          '\nWalk, bike or use public transportation when possible. By the way, 30 minutes of fast-paced walk a day is a good workout and a great mood booster',
                      style: TextStyle(fontSize: 14.0, color: Colors.black87))
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
    )),
    image: const Image(image: AssetImage('images/Electric car.gif')),
  );
}
