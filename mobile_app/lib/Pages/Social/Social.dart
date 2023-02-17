import 'package:mobile_app/Pages/Social/widgets/Post.dart';
import 'package:flutter/material.dart';

class Social extends StatelessWidget {
  const Social({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
           Post(),
           Post(),
            Post(),
            Post(),
            Post(),
            Post(),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add, size: 34),
      ),
    );
  }
}
