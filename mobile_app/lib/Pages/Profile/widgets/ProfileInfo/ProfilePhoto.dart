import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const InkWell(
        child: ProfilePicture(
            name: 'Andy Paling', radius: 56, fontsize: 28),
    );
  }
}
