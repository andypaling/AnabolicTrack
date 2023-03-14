import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mobile_app/tokenManager.dart' as token_manager;


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String _username = '';
  String _password = '';
  String _errorText = '';

  onSubmit() async {
    setState(() {
      _errorText = '';
    });

    // Check for empty fields
    if (_username == '' || _password == '') {
      setState(() {
        _errorText = 'All fields must be filled';
      });
      return;
    }

    var headers = {'Content-Type': 'application/x-www-form-urlencoded'};
    var request = http.Request(
        'POST', Uri.parse('http://192.168.178.112:8000/accounts/token/login'));
    request.bodyFields = {'password': _password, 'username': _username};
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      // Credentials are correct, get token
      String authToken = await convert
          .jsonDecode(await response.stream.bytesToString())['auth_token'];
      print(authToken);
    } else {
      // Credentials incorrect
      setState(() {
        _errorText = 'Account not found with credentials provided';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
                child: Text('Login',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    )))),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextField(
                  decoration: const InputDecoration(labelText: 'Username'),
                  onChanged: (value) {
                    setState(() {
                      _username = value;
                    });
                  },
                ),
                TextField(
                  decoration: const InputDecoration(labelText: 'Password'),
                  onChanged: (value) {
                    setState(() {
                      _password = value;
                    });
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      onSubmit();
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70,
                      ),
                    )),
                Text(
                  _errorText,
                  style: const TextStyle(
                    color: Colors.red,
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                  ),
                ),
              ],
            )));
  }
}
