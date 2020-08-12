import 'package:dtabbarjstore/data.dart';
import 'package:dtabbarjstore/fpage/cart.dart';
import 'package:dtabbarjstore/fpage/itemdetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class order1 extends StatefulWidget {
  @override
  _order1State createState() => _order1State();
}

class _order1State extends State<order1> {

  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQueryData = MediaQuery.of(context);

    final _screenWidth = _mediaQueryData.size.width;
    return Scaffold(
      backgroundColor: data.back,
      body: SingleChildScrollView(
        child: Container(
          color: data.back,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 231,
                child: ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    bottom: const Radius.circular(18),
                  ),
                  child: Container(
                    color: Color(0xff047BD5),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 68.0,
                                    ),
                                    child: Container(
                                      child: Text(
                                        "Quality",
                                        style: data.h1,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      "Food & Groceries",
                                      style: data.h2,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(top: 40, right: 15),
                              child: Container(
                                child: InkWell(
                                    onTap:  (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => cartpage(

                                        )),
                                      );
                                    },
                                  child: Image.asset(
                                    "assets/cartxd.png",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 18.0),
                          child: Container(
                            child: Image.asset("assets/searchbar.png"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8),
                child: Text("Categories", style: data.s),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      containerhoriscroll(
                        ilink: "assets/health.png", cname: "Health",),
                      containerhoriscroll(
                        ilink: "assets/groceries.png", cname: "Groceries",),
                      containerhoriscroll(
                        ilink: "assets/essentials.png", cname: "Essentials",),
                      containerhoriscroll(
                        ilink: "assets/dairy.png", cname: "Dairy",),
                      containerhoriscroll(
                        ilink: "assets/health.png", cname: "Health",),
                      containerhoriscroll(
                        ilink: "assets/groceries.png", cname: "Groceries",),
                      containerhoriscroll(
                        ilink: "assets/essentials.png", cname: "Essentials",),
                      containerhoriscroll(
                        ilink: "assets/dairy.png", cname: "Dairy",),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18.0, left: 8),
                child: Text("Best Sellers", style: data.s),
              ),
              bestsellscroll()
            ],
          ),
        ),
      ),
    );
  }
}

class containerhoriscroll extends StatelessWidget {
  final String ilink, cname;

  const containerhoriscroll({Key key, this.ilink, this.cname})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Image.asset('${ilink}'),
        ),
        Text("${cname}"),
      ],
    );
  }
}

class bestsellscroll extends StatelessWidget {
  List<bestseller> prodetails = [
    bestseller(
      il: "assets/maida.png",
      c: "groceries",
      a: 450,
      n: "Maida",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        //color: Color(0xffF4F8FB),
        color: data.back,
        child: Column(
          children: <Widget>[
            prodetails[0],
            prodetails[0],
            prodetails[0],
            prodetails[0],
            prodetails[0],
            prodetails[0],
            prodetails[0],
            prodetails[0],
            prodetails[0],
            prodetails[0],
            prodetails[0],
            prodetails[0],
            prodetails[0],
          ],
        ),
      ),
    );
  }
}

class bestseller extends StatelessWidget {
  final double a;
  final String il, n, c;

  const bestseller({Key key, this.a, this.il, this.n, this.c})
      : super(key: key);

  static const Color back = Color(0xfff9f9f9);
  static const Color unselected = Colors.grey;
  static const Color maincolor = Colors.blue;


  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQueryData = MediaQuery.of(context);

    final _screenWidth = _mediaQueryData.size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          const Radius.circular(18),
        ),
        child: InkWell(
          onTap:  (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => itemdetails(
                a: a,il: il,n: n,c: c,
              )),
            );
          },
          child: Container(
            color: Colors.white,
            width: _screenWidth,
            height: 55,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Image.asset(
                    "${il}",
                    fit: BoxFit.contain,
                  ),
                  height: 46,
                  width: 46,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(
                          "${n}",
                          style: data.t2,
                        ),
                      ),
                      Text(
                        "${c}",
                        style: data.t1,
                      ),
                      Text(
                        "Rs. ${a}",
                        style: data.amount,
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    color: Color(0xff047BD5),
                    child: Center(
                        child: Text(
                          "ADD",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                    height: 25,
                    width: 52,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class horiscrollcate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Image.asset('assets/dairy.png'),
        ),
        Text("Dairy"),
      ],
    );
  }
}
