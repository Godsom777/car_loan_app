import 'package:cupertino_stepper/cupertino_stepper.dart';
import 'package:flutter/cupertino.dart';

Step buildStep({
  required Widget title,
  StepState state = StepState.indexed,
  bool isActive = false,
}) {
  return Step(
    title: title,
    subtitle: Text('Subtitle'),
    state: state,
    isActive: isActive,
    content: LimitedBox(
      maxWidth: 300,
      maxHeight: 300,
      child: Container(color: CupertinoColors.systemGrey),
    ),
  );
}
