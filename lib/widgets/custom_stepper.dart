import 'package:flutter/material.dart';

/// Usage Example:
/// ```dart
/// CustomStepper(
///   steps: steps,
///   currentStep: 0,
///   onStepContinue: () {},
///   onStepCancel: () {},
///   onStepTapped: (index) {},
/// )
/// ```
class CustomStepper extends StatelessWidget {
  const CustomStepper({
    super.key,
    required this.steps,
    required this.currentStep,
    required this.onStepContinue,
    required this.onStepCancel,
    required this.onStepTapped,
  });

  final List<Step> steps;
  final int currentStep;
  final VoidCallback onStepContinue;
  final VoidCallback onStepCancel;
  final ValueChanged<int> onStepTapped;

  @override
  Widget build(BuildContext context) {
    return Stepper(
      currentStep: currentStep,
      steps: steps,
      onStepContinue: onStepContinue,
      onStepCancel: onStepCancel,
      onStepTapped: onStepTapped,
    );
  }
}
