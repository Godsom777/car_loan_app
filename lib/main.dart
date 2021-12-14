import 'package:car_loan_app/questions/q1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*
      making the app fullscreen for more immersive experience
       */

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    /*
    Text theme for the whole application
     */
    const TextTheme textTheme = TextTheme(
        headline1: TextStyle(
            fontSize: 72.0,
            fontWeight: FontWeight.w900,
            fontFamily: 'SwedbankSans'),
        headline6: TextStyle(
            fontSize: 36.0,
            fontStyle: FontStyle.normal,
            fontFamily: 'SwedbankSans'),
        bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'SwedbankSans'),
        button: TextStyle(color: Colors.white));
    return MaterialApp(
      routes: {},
      /*
      //
       */
      debugShowCheckedModeBanner: false,

      /*
      //
      //
      Theme colors to match that of the official global Swedbank color schemes
      //
      //
      */
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          splashColor: Colors.deepOrangeAccent,
          textTheme: GoogleFonts.latoTextTheme(),
          buttonTheme: const ButtonThemeData(
            buttonColor: Colors.deepOrange,
            disabledColor: Colors.blueGrey,
            splashColor: Colors.white70,
          )),
      home: Questions(),
    );
  }
}
