import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_screen_tokped_clone/screens/component/rounded_button.dart';

import '../../../constants.dart';
import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // this provide total size of our screen
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Welcome to Tokopedia",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            "assets/icons/welcome.svg",
            height: size.height * 1,
          ),
          RoundedBotton(
            text: "LOGIN",
            press: () {},
            color: kPrimaryColor,
            textColor: Colors.white,
          ),
          RoundedBotton(
            text: "SiGN UP",
            press: () {},
            color: kPrimaryLightColor,
            textColor: Colors.black,
          ),
        ],
      ),
    );
  }
}

