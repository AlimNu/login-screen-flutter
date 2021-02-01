import 'package:flutter/material.dart';
import 'package:login_screen_tokped_clone/screens/login/component/body.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Body(),
    );
  }
}

