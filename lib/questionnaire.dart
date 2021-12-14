import 'package:cupertino_stepper/cupertino_stepper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class StepperPage extends StatefulWidget {
  @override
  _StepperPageState createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Image(
          image: AssetImage('images/Swedbank-icon.png'),
        ),
      ),
    )

        // CupertinoPageScaffold(
        //   navigationBar: const CupertinoNavigationBar(
        //     middle: Image(image: AssetImage('images/Swedbank_title_logo.png')),
        //   ),
        //   child: OrientationBuilder(
        //     builder: (BuildContext context, Orientation orientation) {
        //       switch (orientation) {
        //         case Orientation.portrait:
        //           return _buildStepper(StepperType.vertical);
        //         case Orientation.landscape:
        //           return _buildStepper(StepperType.horizontal);
        //         default:
        //           throw UnimplementedError(orientation.toString());
        //       }
        //     },
        //   ),
        // ),
        );
  }

  CupertinoStepper _buildStepper(StepperType type) {
    final canCancel = currentStep > 0;
    final canContinue = currentStep < 6;
    return CupertinoStepper(
      type: type,
      currentStep: currentStep,
      onStepTapped: (step) => setState(() => currentStep = step),
      onStepCancel: canCancel ? () => setState(() => --currentStep) : null,
      onStepContinue: canContinue ? () => setState(() => ++currentStep) : null,
      steps: [
        for (var i = 0; i < 6; ++i)
          buildStep(
            title: Text('Step ${i + 1}'),
            isActive: i == currentStep,
            state: i == currentStep
                ? StepState.editing
                : i < currentStep
                    ? StepState.complete
                    : StepState.indexed,
          ),
        buildStep(
          title: const Text('Error'),
          state: StepState.error,
        ),
        buildStep(
          title: Text('Disabled'),
          state: StepState.disabled,
        )
      ],
    );
  }
}
