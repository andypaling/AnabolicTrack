import 'package:flutter/material.dart';

class CreateNewPlan extends StatelessWidget {
  const CreateNewPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    void onPress() {
      return;
    }

    return Container(
        margin: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: ElevatedButton(
          onPressed: () {
            onPress();
          },
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              )),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(children: const [
              Icon(
                Icons.add_circle_outline,
                size: 35,

              ),
              Text(
                'CREATE NEW PLAN',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white70,
                ),
              ),
            ]),
          ),
        ));
  }
}
