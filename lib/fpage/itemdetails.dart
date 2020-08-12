import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dtabbarjstore/data.dart';
import 'package:dtabbarjstore/dtabbar/fpage.dart';

class itemdetails extends StatefulWidget {
  final double a;
  final String il, n, c;

  const itemdetails({Key key, this.a, this.il, this.n, this.c})
      : super(key: key);

  @override
  _itemdetailsState createState() => _itemdetailsState(a, il, n, c);
}

class _itemdetailsState extends State<itemdetails> {
  final double a;
  final String il, n, c;

  _itemdetailsState(this.a, this.il, this.n, this.c);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Item Details",
          style: TextStyle(color: Colors.white, fontFamily: "Poppins-Bold"),
        ),
      ),
      backgroundColor: data.back,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.white,
                      height: 559,
                      width: 328,
                      child: proddetails(
                        a: a,
                        il: il,
                        n: n,
                        c: c,
                      ),
                    ),
                  ),
                ),
                bestsellscroll(),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: floataddcart(),
          ),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class proddetails extends StatelessWidget {
  final double a;
  final String il, n, c;

  const proddetails({Key key, this.a, this.il, this.n, this.c})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
              child: Container(
                  height: 296, width: 296, child: Image.asset("$il"))),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "${n}",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.5,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 0.5,
                      ),
                      Text(
                        "${c}",
                        style: data.t1,
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Rs. ${a}",
                        style: TextStyle(
                            fontFamily: "Poppins-Medium",
                            color: data.maincolor,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.5,
                            fontSize: 22),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18.0, vertical: 8),
                  child: Center(
                    child: kgbutton(),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text(
              "Details",
              style: TextStyle(
                  fontFamily: "Poppins-Medium",
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                  fontSize: 14),
            ),
          ),
          SizedBox(
            height: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              style: TextStyle(
                  fontFamily: "Poppins-Medium",
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.5,
                  fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
