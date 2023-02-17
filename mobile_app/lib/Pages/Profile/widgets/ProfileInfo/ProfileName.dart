import 'package:flutter/material.dart';

class ProfileName extends StatelessWidget {
  const ProfileName({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('Andy Paling',
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w700,
        ));
  }
}
