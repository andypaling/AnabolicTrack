import 'package:flutter/material.dart';

class TrackProgress extends StatelessWidget {
  const TrackProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: SizedBox(
        width: double.infinity,
        height: 65,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Colors.grey,
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              )
            )
          ),

          onPressed: () {},
          child: const Text(
            'TRACK PROGRESS',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              letterSpacing: 3,
              fontSize: 19,
            ),
          ),
        ),
      ),
    );
  }
}
