import 'package:flutter/material.dart';
import 'package:login_screen_tokped_clone/constants.dart';
import 'package:login_screen_tokped_clone/screens/component/already_have_an_account_check.dart';
import 'package:login_screen_tokped_clone/screens/component/rounded_button.dart';
import 'package:login_screen_tokped_clone/screens/component/rounded_input_field.dart';
import 'package:login_screen_tokped_clone/screens/component/rounded_password_field.dart';
import 'package:login_screen_tokped_clone/screens/login/component/background.dart';
import 'package:login_screen_tokped_clone/screens/signup/sign_up_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'LOGIN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Image.asset(
              'assets/images/login_screen.png',
              height: size.height * 0.3,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
              hintText: 'Your Email',
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedBotton(
              text: 'LOGIN',
              press: () {},
              color: kPrimaryColor,
            ),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SignUpScreen();
                  }),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
