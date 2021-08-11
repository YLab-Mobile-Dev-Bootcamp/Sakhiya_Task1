import 'package:flutter/material.dart';
import 'package:flutter_application_2/home.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlutterIcon(),
          UsernameTextField(),
          PasswordTextField(),
          LoginButton()
        ],
      ),
    )));
  }
}

class FlutterIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network(
        "https://cdn.iconscout.com/icon/free/png-512/flutter-2038877-1720090.png",
        width: 64.0,
        height: 64.0);
  }
}

class UsernameTextField extends StatelessWidget {
  static TextEditingController usernameController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 32),
        child: TextField(
          controller: usernameController,
          decoration: InputDecoration(
              hintText: "Username",
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue[900]))),
        ));
  }
}

class PasswordTextField extends StatelessWidget {
  static TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.0, right: 16.0, top: 12.0, bottom: 32.0),
      child: TextField(
        controller: passwordController,
        obscureText: true,
        decoration: InputDecoration(
            hintText: "Password",
            border:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          // validasi username password
          // 1. get username dan password yang diinputin
          String username = UsernameTextField.usernameController.text;
          String password = PasswordTextField.passwordController.text;

          // 2. validasi username password
          if (username == 'admin' && password == 'admin') {
            // navigasi ke home
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          } else {
            // nampilin error
            print("Invalid username or password");
          }

          // decide nampilin error ato navigasi ke homepage
        },
        child: Text("LOG IN"));
  }
}
