import 'package:dtabbarjstore/data.dart';
import 'package:flutter/material.dart';
class orderscreen extends StatefulWidget {
  @override
  _orderscreenState createState() => _orderscreenState();
}

class _orderscreenState extends State<orderscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: data.back,
          body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(color: Colors.red[200],),
          ),
    );
  }
}
