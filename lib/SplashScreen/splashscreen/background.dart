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
            // left: 0,
            child: 
            Image.asset('assets/images/splashscreen2.png'),
            width: size.width,
            height: size.height,
            // height: size.height,
            ),
          // Positioned(
          //   bottom: 20,
          //   child: 
          //   Image.asset('assets/images/asset 1.png'),
          //   width: size.width,
          //   ),
            // Positioned(
            // bottom:0,
            // left: 0,
            // child: 
            // Text("HALAH"),
            // width: size.width * 0.5,
            // ),
          // Positioned(
          //   bottom: -40,
          //   left: -60,
          //   child: 
          //   Image.asset('assets/images/Vector_38.png'),
          //   width: size.width * 0.5,
          //   ),
            child,
        ],
      ),
    );
  }
}

