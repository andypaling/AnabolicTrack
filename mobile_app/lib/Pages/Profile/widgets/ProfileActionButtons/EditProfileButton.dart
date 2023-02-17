import 'package:flutter/material.dart';

class EditProfileButton extends StatelessWidget {
  const EditProfileButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     SizedBox(
        width: double.infinity,
        height: 50,
        child:
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey
            ),
            onPressed: () {},
            child: const Text(
              'EDIT PROFILE',
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
