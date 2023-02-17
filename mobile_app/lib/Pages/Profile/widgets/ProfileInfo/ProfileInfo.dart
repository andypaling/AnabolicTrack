import 'package:mobile_app/Pages/Profile/widgets/ProfileInfo/ProfileAbout.dart';
import 'package:mobile_app/Pages/Profile/widgets/ProfileInfo/ProfileLocation.dart';
import 'package:mobile_app/Pages/Profile/widgets/ProfileInfo/ProfileName.dart';
import 'package:mobile_app/Pages/Profile/widgets/ProfileInfo/ProfilePhoto.dart';
import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Center(child: ProfilePhoto()),
        SizedBox(
          height: 15,
        ),
        ProfileName(),
        SizedBox(
          height: 2,
        ),
        ProfileLocation(),
        ProfileAbout(),
        SizedBox(height: 5),
      ],
    );
  }
}
