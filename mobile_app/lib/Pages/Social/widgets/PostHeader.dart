import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Flexible(
        child: ProfilePicture(
          name: 'Andy Paling',
          radius: 28,
          fontsize: 18,
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text('Andy Paling',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 14,
                fontStyle: FontStyle.italic,
              )),
          SizedBox(
            height: 5,
          ),
          Text('My new cutting diet plan, 2300cals daily',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        ],
      )
    ]);
  }
}
