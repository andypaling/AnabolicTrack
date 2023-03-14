import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

const List<String> unitOptions = <String>['metric', 'imperial'];

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String _username = '';
  String _email = '';
  String _password = '';
  String _rePassword = '';
  String? dropdownValue;
  String errorText = '';

  bool checkInput(inputValues) {
    // Return true if inputted data passes all client side checks
    // Check for empty input
    var fieldsEmpty = false;
    for (int i = 0; i < inputValues.length; i++) {
      if (inputValues[i] == '' || inputValues[i] == null) {
        fieldsEmpty = true;
        setState(() {
          errorText = 'All fields must be filled';
        });
      }
    }
    if (fieldsEmpty) return false;

    // Check for non invalid email
    final bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(inputValues[1]!);

    if (!emailValid) {
      setState(() {
        errorText = 'Email Address is not valid';
      });
      return false;
    }

    // Check for non matching passwords
    if (inputValues[2] != inputValues[3]) {
      setState(() {
        errorText = 'Passwords do not match';
      });
      return false;
    }

    // All client side check passed
    return true;
  }

  Future<void> updateErrorTextOnFailedSignUp(apiResponse) async {
    // Error while creating account - issue with inputted data
    var errorListHashMap =
        await convert.jsonDecode(await apiResponse.stream.bytesToString());

    // Put all items in hashmap into a list
    List<dynamic> errorList = [];
    errorListHashMap.forEach((k, v) => errorList.add(v));

    String errors = '';
    for (int i = 0; i < errorList.length; i++) {
      errors = '${'$errors- ' + errorList[i][0]}\n';
    }

    setState(() {
      errorText = errors;
    });
  }

  onSubmit() {
    // On press method for sign up button
    List<String?> inputValues = <String?>[
      _username,
      _email,
      _password,
      _rePassword,
      dropdownValue,
    ];

    setState(() {
      errorText = '';
    });

    if (checkInput(inputValues)) {
      // Client side check all pass
      submitForm();
    }
  }

  submitForm() async {
    // Submit POST request to create new user
    var headers = {'Content-Type': 'application/x-www-form-urlencoded'};
    var request = http.Request(
        'POST', Uri.parse('http://192.168.178.112:8000/accounts/users/'));
    request.bodyFields = {
      'email': _email,
      'password': _password,
      're_password': _rePassword,
      'username': _username,
      'preferred_unit': dropdownValue!,
    };
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 201) {
      // Account created successfully, get the auth token of the created user
      var headers = {'Content-Type': 'application/x-www-form-urlencoded'};
      var request = http.Request('POST',
          Uri.parse('http://192.168.178.112:8000/accounts/token/login'));
      request.bodyFields = {'password': _password, 'username': _username};
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      String authToken = await convert
          .jsonDecode(await response.stream.bytesToString())['auth_token'];

      print(authToken);
    } else {
      updateErrorTextOnFailedSignUp(response);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
                child: Text('Sign Up',
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
                decoration: const InputDecoration(labelText: 'Email'),
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                onChanged: (value) {
                  setState(() {
                    _password = value;
                  });
                },
              ),
              TextField(
                  decoration:
                      const InputDecoration(labelText: 'Retype Password'),
                  obscureText: true,
                  onChanged: (value) {
                    setState(() {
                      _rePassword = value;
                    });
                  }),
              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                isExpanded: true,
                hint: const Text('Preferred Unit'),
                onChanged: (String? value) {
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items:
                    unitOptions.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: const TextStyle(fontSize: 16),
                      ));
                }).toList(),
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
                  child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white70,
                        ),
                      ))),
              Text(
                errorText,
                style: const TextStyle(
                  color: Colors.red,
                  fontStyle: FontStyle.italic,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ));
  }
}
