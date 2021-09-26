import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key, 
    required this.child,
  }) : super(key: key);

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: 420,
      height: 360,
      child: Stack(
        children: <Widget>[
          Positioned(
            right: 0,          
            child: 
            Image.asset('assets/images/Homepage_BG.png'),
            ),
            child,
        ],
      ),
    );
  }
}

