import 'package:flutter/material.dart';

class PostBody extends StatelessWidget {
  const PostBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 5,
        left: 5,
        right: 5,
      ),
      child: Text(
          'Lorem ipsum dolor sit amet, conjecture adipiscing elit, sed do elusmod tempor incididunt ut labore et dolore magna alique.'),
    );
  }
}
