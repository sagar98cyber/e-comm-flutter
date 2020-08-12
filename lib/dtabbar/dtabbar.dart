import 'package:dtabbarjstore/data.dart';
import 'package:dtabbarjstore/dtabbar/fpage.dart';
import 'package:dtabbarjstore/dtabbar/spage.dart';
import 'package:dtabbarjstore/dtabbar/tpage.dart';
import 'package:flutter/material.dart';

class dtabarstore extends StatefulWidget {
  @override
  _dtabarstoreState createState() => _dtabarstoreState();
}

class _dtabarstoreState extends State<dtabarstore> {
  List<Widget> pages = [
    order1(),
    orderscreen(),
    profilescreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: pages.length,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: data.back,
        body: TabBarView(children: pages),
        bottomNavigationBar: new TabBar(

          tabs: [
            Tab(
              icon: Icon(Icons.store_mall_directory),
            ),
            Tab(
              icon: Icon(Icons.list),
            ),
            Tab(
              icon: Icon(Icons.account_circle),
            ),


          ],
          unselectedLabelColor: data.unselected,
          labelColor: data.maincolor,
        ),
      ),
    );
  }
}
