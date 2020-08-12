import 'package:flutter/material.dart';
class privacy extends StatefulWidget {
  @override
  _privacyState createState() => _privacyState();
}

class _privacyState extends State<privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Privacy Policies",
            style: TextStyle(color: Colors.white, fontFamily: "Poppins-Bold"),

          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Text("This is privacy policy page"),
        ),
      ),
    );
  }
}
