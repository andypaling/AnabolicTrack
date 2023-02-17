import 'package:flutter/material.dart';

class ProfileLocation extends StatelessWidget {
  const ProfileLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('London, England',
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.italic));
  }
}
