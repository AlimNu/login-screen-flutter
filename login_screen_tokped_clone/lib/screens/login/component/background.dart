import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
              top: -30,
              left: -30,
              child: Image.asset("assets/images/top.png", width: size.width * 0.5,)),
          Positioned(
              bottom: 0,
              left: - 30,
              child: Image.asset("assets/images/bottom.png", width: size.width * 0.5,)),
          child
        ],
      ),
    );
  }
}

