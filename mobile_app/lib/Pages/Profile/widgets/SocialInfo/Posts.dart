import 'package:mobile_app/Pages/Social/widgets/Post.dart';
import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Post(),
        Post(),
        Post(),
        Post(),
      ],
    );
  }
}
