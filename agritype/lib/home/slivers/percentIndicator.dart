import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PercentIndicator extends StatelessWidget {
  late double value1;
  late double value2;
  late double value3;
  PercentIndicator(
      {required this.value1, required this.value2, required this.value3});
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircularPercentIndicator(
          backgroundColor: Colors.black,
          animateFromLastPercent: true,
          animation: true,
          animationDuration: 1000,
          curve: Curves.easeOutBack,
          radius: 40.0,
          lineWidth: 6.0,
          percent: value1 / 100,
          center: Text(
            value1.toString(),
            style: const TextStyle(
              color: Color.fromARGB(220, 255, 255, 255),
            ),
          ),
          progressColor: Colors.amber,
        ),
        CircularPercentIndicator(
          backgroundColor: Colors.black,
          animateFromLastPercent: true,
          animation: true,
          animationDuration: 1000,
          curve: Curves.easeOutBack,
          radius: 40.0,
          lineWidth: 6.0,
          percent: value2 / 100,
          center: Text(
            value2.toString(),
            style: const TextStyle(
              color: Color.fromARGB(220, 255, 255, 255),
            ),
          ),
          progressColor: Colors.green,
        ),
        CircularPercentIndicator(
          backgroundColor: Colors.black,
          animateFromLastPercent: true,
          animation: true,
          animationDuration: 1000,
          curve: Curves.easeOutBack,
          radius: 40.0,
          lineWidth: 5.0,
          percent: value3 / 100,
          center: Text(
            value3.toString(),
            style: const TextStyle(
              color: Color.fromARGB(220, 255, 255, 255),
            ),
          ),
          progressColor: Colors.red,
        )
      ],
    ));
  }
}
