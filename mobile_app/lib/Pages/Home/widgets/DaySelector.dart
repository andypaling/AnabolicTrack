import 'package:flutter/material.dart';

class DaySelector extends StatelessWidget {
  const DaySelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Container(
        margin: const EdgeInsets.all(10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              Icon(Icons.arrow_back),
              Text('Today',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
              Icon(Icons.arrow_forward),
            ])));
  }
}
