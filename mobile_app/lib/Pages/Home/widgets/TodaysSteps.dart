import 'package:flutter/material.dart';

class TodaysSteps extends StatefulWidget {
  const TodaysSteps({Key? key}) : super(key: key);

  @override
  State<TodaysSteps> createState() => _TodaysStepsState();
}

class _TodaysStepsState extends State<TodaysSteps> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.redAccent,
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 10,
        bottom: 10,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: const <Widget>[
            Text(
              'Todays Steps',
            ),
          ],
          ),
        ),
      );
  }
}
