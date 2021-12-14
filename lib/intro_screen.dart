import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({Key? key}) : super(key: key);

  @override
  _FlashScreenState createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    final size = MediaQuery.of(context).size;
    return Scaffold(
        floatingActionButton: FloatingActionButton.large(
          onPressed: () {},
          child: Text(
            'Start >>',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Row(
            children: const [
              Image(
                image: AssetImage('images/Swedbank-icon.png'),
                width: 50,
              ),
              SizedBox(width: 10),
              Text('Swedbank Car loan',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                      color: Colors.white)),
            ],
          ),
        ),
        body: Stack(children: [
          SizedBox(
            height: size.height,
            width: size.width,
            /*
            backGround image
             */
            child: Icon(FontAwesomeIcons.car,
                size: 735, color: Colors.grey.withOpacity(0.17)),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  const Text('Have A Great ride with Your New Car!',
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 45)),
                  const Text(
                      'Car loan is an incredibly convenient and fast solution',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 18)),
                  const Divider(
                    endIndent: 50,
                    indent: 50,
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  bulletList('No down payment required.'),
                  SizedBox(
                    height: 10,
                  ),
                  bulletList('Annual interest rate from 7,9 percent.'),
                  SizedBox(
                    height: 10,
                  ),
                  bulletList(
                      'Casco Insurance is recommended, but not mandatory.'),
                  SizedBox(
                    height: 10,
                  ),
                  bulletList(
                      'Money is transferred to the account immediately after the conclusion of the contract.'),
                  Divider(
                    indent: 50,
                    endIndent: 50,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  const Text('Get Started In few steps!',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 18)),
                ],
              ),
            ),
          ),
        ]));
  }

  Row bulletList(String text) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          CupertinoIcons.circle_filled,
          size: 12,
          color: Colors.deepOrangeAccent,
        ),
        SizedBox(
          width: 10,
        ),
        SizedBox(
          width: size.width * .8,
          child: Text(
            text,
            softWrap: true,
            maxLines: 4,
            style:
                const TextStyle(overflow: TextOverflow.ellipsis, fontSize: 21),
          ),
        ),
      ],
    );
  }
}
