import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key, 
    required this.child,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            right: 0,
            child: 
            Image.asset('assets/images/Vector_37.png'),
            width: size.width * 0.50,
            ),
          Positioned(
            top: 150,
            child: 
            Image.asset('assets/images/logo.png'),
            width: size.width * 0.45,
            ),
          Positioned(
            bottom: -40,
            left: -60,
            child: 
            Image.asset('assets/images/Vector_38.png'),
            width: size.width * 0.5,
            ),
            child,
        ],
      ),
    );
  }
}

