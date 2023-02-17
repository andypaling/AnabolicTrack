import 'package:mobile_app/Pages/Social/widgets/PostBody.dart';
import 'package:mobile_app/Pages/Social/widgets/PostFooter.dart';
import 'package:flutter/material.dart';

import 'PostHeader.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.white70,
        margin: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 10,
          bottom: 5,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: InkWell(
            splashColor: Colors.blue.withAlpha(40),
            onTap: () {},
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const [
                    PostHeader(),
                    PostBody(),
                    SizedBox(
                      height: 8,
                    ),
                    PostFooter(),
                  ],
                ))));
  }
}
