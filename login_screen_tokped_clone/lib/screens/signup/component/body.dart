import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_screen_tokped_clone/screens/component/already_have_an_account_check.dart';
import 'package:login_screen_tokped_clone/screens/component/or_divider.dart';
import 'package:login_screen_tokped_clone/screens/component/rounded_button.dart';
import 'package:login_screen_tokped_clone/screens/component/rounded_input_field.dart';
import 'package:login_screen_tokped_clone/screens/component/rounded_password_field.dart';
import 'package:login_screen_tokped_clone/screens/component/social_icon.dart';
import 'package:login_screen_tokped_clone/screens/login/login_screen.dart';
import 'package:login_screen_tokped_clone/screens/signup/component/background.dart';

import '../../../constants.dart';

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
              'Create A New Account',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Image.asset(
              'assets/images/signup.png',
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
              text: 'Sign Up',
              press: () {},
              color: kPrimaryColor,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialIcon(
                  iconSrc: 'assets/icons/facebook.svg',
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: 'assets/icons/twitter.svg',
                  press: () {},
                ),
                SocialIcon(
                  iconSrc: 'assets/icons/google.svg',
                  press: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

