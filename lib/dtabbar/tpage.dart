import 'package:dtabbarjstore/data.dart';
import 'package:dtabbarjstore/profilepart/temp.dart';
import 'package:flutter/material.dart';
class profilescreen extends StatefulWidget {
  @override
  _profilescreenState createState() => _profilescreenState();
}

class _profilescreenState extends State<profilescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Profile",
                style: TextStyle(color: Colors.white, fontFamily: "Poppins-Bold"),
              ),
            ),
            expandedHeight: 60,
          ),
          //  SliverChildDelegate(

          //      delegate:
          SliverFillRemaining(
            child: p(),
          ),

          //  ( context,  index) {
          // #return Container(
          // #alignment: Alignment.topLeft,

          //#child: p(),
          //);
          // },

          //),
        ],
      ),
    );
  }
}
