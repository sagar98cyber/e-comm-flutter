import 'package:flutter/material.dart';
class categories extends StatefulWidget {
  @override
  _categoriesState createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Image.asset('assets/dairy.png'),
          ),
          Text(
              "Dairy"
          ),
        ],
      ),
    );
  }
}
