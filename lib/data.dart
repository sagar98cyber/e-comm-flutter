import 'package:flutter/material.dart';

class data {
  static const Color back = Color(0xfff9f9f9);
  static const Color unselected = Colors.grey;
  static const Color maincolor = Colors.blue;
  static const TextStyle h1 = TextStyle(
      fontFamily: "Poppins-SemiBold",
      fontWeight: FontWeight.w500,
      color: Colors.white,
      letterSpacing: 0.5,
      fontSize: 28);
  static const TextStyle h2 = TextStyle(
      fontFamily: "Poppins-Thin",
      color: Colors.white,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      fontSize: 28);
  static const TextStyle s = TextStyle(
      fontFamily: "Poppins-Bold",
      fontWeight: FontWeight.w500,
      color: Colors.black,
      letterSpacing: 0,
      fontSize: 14);
  static const TextStyle amount = TextStyle(
      fontFamily: "Poppins-Medium",
      color: Colors.black,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      fontSize: 16);
  static const TextStyle t1 = TextStyle(
      fontFamily: "Poppins-Thin",
      color: Colors.grey,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      fontSize: 12);
  static const TextStyle t2 = TextStyle(
      fontFamily: "Poppins-Medium",
      color: Colors.black,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      fontSize: 14);
}

class kgbutton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF7A200),
      child: Center(
          child: Text(
        "KG",
        style: TextStyle(
          color: Colors.white,
        ),
      )),
      height: 25,
      width: 52,
    );
  }
}

class floataddcart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQueryData = MediaQuery.of(context);

    final _screenWidth = _mediaQueryData.size.width;
    return Container(
      color: Color(0xffF7A200),
      child: InkWell(
        child: Center(
            child: Text(
          "ADD TO CART",
          style: TextStyle(
              fontFamily: "Poppins-Medium",
              color: Colors.white,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
              fontSize: 16),
        )),
      ),
      height: 48,
      width: _screenWidth,
    );
  }
}
