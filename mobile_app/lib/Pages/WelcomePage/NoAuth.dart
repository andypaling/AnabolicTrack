import 'package:flutter/material.dart';
import 'package:mobile_app/Pages/Login/Login.dart';
import 'package:mobile_app/Pages/SignUp/SignUp.dart';

class NoAuth extends StatelessWidget {
  const NoAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void signUpOnPress() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const SignUp()
        )
      );
    }

    void loginOnPress() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const Login()
        )
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'AnabolicTrack',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            )
          ),
        )
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: signUpOnPress,
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: loginOnPress,
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white70,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
