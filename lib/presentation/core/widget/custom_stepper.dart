import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomStepper extends StatelessWidget {
  final int currentStep;
  final int totalSteps;
  final double circleRadius;
  final double lineWidth;
  final Color activeColor;
  final Color inactiveColor;
  const CustomStepper({
    Key? key,
    required this.currentStep,
    required this.totalSteps,
    this.circleRadius = 10,
    this.lineWidth = 2,
    this.activeColor = AppColors.mainColor,
    this.inactiveColor = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(totalSteps, (index) {
          if (index == 0) {
            return _buildCircle(color: activeColor);
          } else if (index <= currentStep - 1) {
            return Expanded(
              child: Row(
                children: [
                  Expanded(child: _buildLine(color: activeColor)),
                  _buildCircle(color: activeColor),
                ],
              ),
            );
          } else {
            return Expanded(
              child: Row(
                children: [
                  Expanded(child: _buildLine(color: inactiveColor)),
                  _buildCircle(color: inactiveColor),
                ],
              ),
            );
          }
        }),
      ],
    );
  }

  Widget _buildCircle({Color? color}) {
    return Container(
      width: circleRadius,
      height: circleRadius,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _buildLine({Color? color}) {
    return Container(
      width: double.infinity,
      height: lineWidth,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
      ),
    );
  }
}
