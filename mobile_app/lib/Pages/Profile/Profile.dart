import 'package:mobile_app/Pages/Profile/widgets/ProfileActionButtons/DeleteProfileButton.dart';
import 'package:mobile_app/Pages/Profile/widgets/ProfileActionButtons/EditProfileButton.dart';
import 'package:mobile_app/Pages/Profile/widgets/ProfileInfo/ProfileInfo.dart';
import 'package:mobile_app/Pages/Profile/widgets/SocialInfo/Heading.dart';
import 'package:mobile_app/Pages/Profile/widgets/SocialInfo/Posts.dart';
import 'package:mobile_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

import '../Social/widgets/Post.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 10),
            child: Column(
              children: const [
                ProfileInfo(),
                SizedBox(height: 5),
                EditProfileButton(),
                SizedBox(height: 5),
                DeleteProfileButton(),
                SizedBox(height: 15),
                Heading(),
              ],
            ),
          ),
          const Posts(),
        ],
      ),
    );
  }
}
