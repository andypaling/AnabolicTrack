import 'package:flutter/material.dart';

class DeleteProfileButton extends StatelessWidget {
  const DeleteProfileButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 50,
        child:
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.redAccent
            ),
            onPressed: () {},
            child: const Text(
              'DELETE PROFILE',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                letterSpacing: 3,
                fontSize: 16,
              ),
            )
        )
    );
  }
}
