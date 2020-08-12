import 'package:flutter/material.dart';
class contactus extends StatefulWidget {
  @override
  _contactusState createState() => _contactusState();
}

class _contactusState extends State<contactus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Contact Us",
            style: TextStyle(color: Colors.white, fontFamily: "Poppins-Bold"),

          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Text("This is contact us page"),
        ),
      ),
    );
  }
}
