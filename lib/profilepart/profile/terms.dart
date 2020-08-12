import 'package:flutter/material.dart';
class terms extends StatefulWidget {
  @override
  _termsState createState() => _termsState();
}

class _termsState extends State<terms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Terms and conditions",
            style: TextStyle(color: Colors.white, fontFamily: "Poppins-Bold"),

          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Text("This is terms and conditions page"),
        ),
      ),
    );
  }
}
