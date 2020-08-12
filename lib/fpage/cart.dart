import 'package:flutter/material.dart';
class cartpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cart",style: TextStyle(color: Colors.white),),),
      body: Container(
        child: Text("This is cart page"),
      ),
    );
  }
}
