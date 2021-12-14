import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:im_stepper/stepper.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  // The form handlers collectors
  TextEditingController lastNameController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController regNameController = TextEditingController();
  TextEditingController vehicleNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  // THE FOLLOWING TWO VARIABLES ARE REQUIRED TO CONTROL THE STEPPER.
  int activeStep = 0; // Initial step set to 0.

  int upperBound = 3; // upperBound MUST BE total number of icons minus 1.
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: Colors.white)),
            ],
          ),
        ),
        body: Column(
          children: [
            header(),
            DotStepper(
              spacing: 75, dotRadius: 7,
              lineConnectorsEnabled: true,
              tappingEnabled: false,
              indicator: Indicator.worm,
              indicatorDecoration: const IndicatorDecoration(
                color: Colors.deepOrangeAccent,
                strokeColor: Colors.white,
                strokeWidth: 1,
              ),
              fixedDotDecoration: FixedDotDecoration(
                  strokeWidth: 0, color: Colors.grey.withOpacity(.2)),

              dotCount: 4,
              // activeStep property set to activeStep variable defined above.
              activeStep: activeStep,

              // This ensures step-tapping updates the activeStep.
            ),
            Expanded(
              child: FittedBox(
                child: Center(
                  child: content(context),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (activeStep > 0) previousButton(),
                  if (activeStep == 3)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Done',
                          style: TextStyle(
                              color: Colors.deepOrangeAccent, fontSize: 18),
                        ),
                      ),
                    ),
                  if (activeStep < 3) nextButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Returns the next button.
  Widget nextButton() {
    return TextButton(
      onPressed: () {
        // Increment activeStep, when the next button is tapped. However, check for upper bound.
        if (activeStep < upperBound) {
          setState(() {
            activeStep++;
          });
        }
      },
      child: Text(
        'Next',
        style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 18),
      ),
    );
  }

  /// Returns the previous button.
  Widget previousButton() {
    return TextButton(
      onPressed: () {
        // Decrement activeStep, when the previous button is tapped. However, check for lower bound i.e., must be greater than 0.
        if (activeStep > 0) {
          setState(() {
            activeStep--;
          });
        }
      },
      child: Text('Prev',
          style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 18)),
    );
  }

  /// Returns the header wrapping the header text.
  Widget header() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.cyan,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              headerText(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Returns the header text based on the activeStep.
  String headerText() {
    switch (activeStep) {
      case 1:
        return 'Contact';

      case 2:
        return 'Table of Contents';

      case 3:
        return 'About the Author';

      case 4:
        return 'Publisher Information';

      case 5:
        return 'Reviews';

      case 6:
        return 'Chapters #1';

      default:
        return 'Introduction';
    }
  }

  Widget content(context) {
    String lastName = lastNameController.text;
    final size = MediaQuery.of(context).size;
    switch (activeStep) {
      case 1:
        return
            /*
   second slide
           */
            SizedBox(
          height: size.height * 0.5,
          width: size.width,
          child: Card(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height * .1,
                    width: size.width * .89,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        'Your contact information so we could reach you',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.brown,
                            fontWeight: FontWeight.w600),
                        maxLines: 2,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Email address')),
                  SizedBox(
                    height: size.height * .04,
                    width: size.width,
                    child: CupertinoTextField(
                      placeholder: 'Email address',
                      controller: emailController,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Phone Number')),
                  SizedBox(
                    height: size.height * .04,
                    width: size.width,
                    child: CupertinoTextField(
                      placeholder: 'Phone Number',
                      controller: phoneNumberController,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );

      case 2:
        return SizedBox(
          height: size.height * 0.5,
          width: size.width,
          child: Card(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: size.height * .1,
                    width: size.width * .89,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        'What kind of Car would you like to have ' '$lastName ',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.brown,
                            fontWeight: FontWeight.w600),
                        maxLines: 2,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  const Align(
                      alignment: Alignment.centerLeft, child: Text('Car Name')),
                  SizedBox(
                    height: size.height * .04,
                    width: size.width,
                    child: CupertinoTextField(
                      placeholder: 'Car Name',
                      controller: vehicleNameController,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Phone Number')),
                  SizedBox(
                    height: size.height * .04,
                    width: size.width,
                    child: CupertinoTextField(
                      placeholder: 'Phone Number',
                      controller: phoneNumberController,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );

      case 3:
        return const Text('About the Author');

      default:
        return SizedBox(
          height: size.height * 0.8,
          width: size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height * .1,
                  width: size.width * .89,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      'We need just a few of your of personal information, please fill in accurately',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.brown,
                          fontWeight: FontWeight.w600),
                      maxLines: 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                const Align(
                    alignment: Alignment.centerLeft, child: Text('First Name')),
                SizedBox(
                  height: size.height * .04,
                  width: size.width,
                  child: CupertinoTextField(
                    placeholder: 'First Name',
                    controller: firstNameController,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                const Align(
                    alignment: Alignment.centerLeft, child: Text('Last Name')),
                SizedBox(
                  height: size.height * .04,
                  width: size.width,
                  child: CupertinoTextField(
                    placeholder: 'Last Name',
                    controller: lastNameController,
                  ),
                ),
              ],
            ),
          ),
        );
    }
  }
}
