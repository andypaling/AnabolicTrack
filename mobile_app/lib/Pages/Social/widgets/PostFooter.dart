import 'package:flutter/material.dart';

class PostFooter extends StatelessWidget {
  const PostFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 6,
        right: 6,
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              print('like');
            },
            child: Row(
              children: const [
                Icon(
                  Icons.thumb_up_outlined,
                  size: 22,
                ),
                SizedBox(
                  width: 5,
                ),
                Text('Like')
              ],
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          InkWell(
            onTap: () {
              print('comment');
            },
            child: Row(
              children: const [
                Icon(
                  Icons.comment,
                  size: 22,
                ),
                SizedBox(
                  width: 5,
                ),
                Text('Comment')
              ],
            ),
          )
        ],
      ),
    );
  }
}
