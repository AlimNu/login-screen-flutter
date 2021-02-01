import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_screen_tokped_clone/screens/component/rounded_button.dart';
import 'package:login_screen_tokped_clone/screens/login/login_screen.dart';
import 'package:login_screen_tokped_clone/screens/signup/sign_up_screen.dart';
import 'package:login_screen_tokped_clone/screens/welcome/component/background.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // this provide total size of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome to Tokopedia",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Image.asset(
              'assets/images/welcome.png',
              height: size.height * 0.4,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedBotton(
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
              text: 'LOGIN',
              color: kPrimaryColor,
              textColor: Colors.white,
            ),
            RoundedBotton(
              text: 'SiGN UP',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SignUpScreen();
                  }),
                );
              },
              color: kPrimaryLightColor,
              textColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
