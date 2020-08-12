import 'package:flutter/material.dart';
class aboutus extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<aboutus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "About Us",
          style: TextStyle(color: Colors.white, fontFamily: "Poppins-Bold"),

        ),
      ),
      ),
      body: Center(
        child: Container(
        child: Text("This is about us page"),
        ),
      ),
    );
  }
}
