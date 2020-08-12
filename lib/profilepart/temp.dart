import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'profile/aboutus.dart';
import 'profile/contactus.dart';
import 'profile/privacy.dart';
import 'profile/terms.dart';
import 'profile/profile.dart';

class p extends StatefulWidget {
  @override
  _pState createState() => _pState();
}

class _pState extends State<p> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQueryData = MediaQuery.of(context);

    final _screenWidth = _mediaQueryData.size.width;
    final _screenHeight = _mediaQueryData.size.height;
    return Container(

      color: Color(0xFFE9E9E9),

      child: Column(

        children: <Widget>[
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              bottom: const Radius.circular(24),
            ),
            child: Container(

              alignment: Alignment.topLeft,
              color: Colors.transparent,
              width: _screenWidth,
              child: fpart(),
              //  Padding(
              // padding: const EdgeInsets.all(),
              //  child:
              //   fpart(),
              //   ),
            ),
          ),
          Container(
            margin: new EdgeInsets.all(10),
            alignment: Alignment.topLeft,
            color: Colors.transparent,
            width: _screenWidth,
            child: spart(),
            //  Padding(
            // padding: const EdgeInsets.all(),
            //  child:
            //   fpart(),
            //   ),
          ),
        ],
        // padding: const EdgeInsets.only(),
      ),
    );

  }
}



class spart extends StatefulWidget {
  static const TextStyle h1 = TextStyle(
      fontFamily: "Poppins-Bold",
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      fontSize: 12);

  @override
  _spartState createState() => _spartState();
}

class _spartState extends State<spart> {
  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQueryData = MediaQuery.of(context);

    final _screenWidth = _mediaQueryData.size.width;
    return Container(

      color: Colors.white,
      width: _screenWidth,
      margin: new EdgeInsets.symmetric(horizontal: 10,vertical: 3),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 15),
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => uinfo()),
                    );
                  },
                  child: ClipOval(
                      child: Container(
                          height: 48,
                          width: 48,
                          child: Image.asset(
                            "assets/icons.png",
                            fit: BoxFit.fill,
                          ))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    margin: new EdgeInsets.only(left: 15, top: 15),
                    child: Text(
                      "Profile",
                      style: spart.h1,
                    ),
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 3,
                  child: Container(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey[300],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 15,
                  //bottom: 8
                ),
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => aboutus()),
                    );
                  },
                  child: ClipOval(
                      child: Container(
                          height: 48,
                          width: 48,
                          child: Image.asset(
                            "assets/imga.png",
                            fit: BoxFit.fill,
                          ))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    margin: new EdgeInsets.only(left: 15, top: 9),
                    child: Text(
                      "About Us",
                      style: spart.h1,
                    ),
                  ),
                ),
              ),
              //Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 3,
                  child: Container(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey[300],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 15,
                  //bottom: 8
                ),
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => contactus()),
                    );
                  },
                  child: ClipOval(
                      child: Container(
                          height: 48,
                          width: 48,
                          child: Image.asset(
                            "assets/imga-1.png",
                            fit: BoxFit.fill,
                          ))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    margin: new EdgeInsets.only(left: 15, top: 9),
                    child: Text(
                      "Contact Us",
                      style: spart.h1,
                    ),
                  ),
                ),
              ),
              //Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 3,
                  child: Container(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey[300],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 15,
                  //bottom: 8
                ),
                child: ClipOval(
                    child: Container(
                        height: 48,
                        width: 48,
                        child: Image.asset(
                          "assets/imga-2.png",
                          fit: BoxFit.fill,
                        ))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    margin: new EdgeInsets.only(left: 15, top: 9),
                    child: Text(
                      "Call Help-Desk",
                      style: spart.h1,
                    ),
                  ),
                ),
              ),
              //Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 3,
                  child: Container(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey[300],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 15,
                  //bottom: 8
                ),
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => terms()),
                    );
                  },
                  child: ClipOval(
                      child: Container(
                          height: 48,
                          width: 48,
                          child: Image.asset(
                            "assets/imga-3.png",
                            fit: BoxFit.fill,
                          ))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    margin: new EdgeInsets.only(left: 15, top: 9),
                    child: Text(
                      "Terms & Condition",
                      style: spart.h1,
                    ),
                  ),
                ),
              ),
              //Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 3,
                  child: Container(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey[300],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 15,
                  //bottom: 8
                ),
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => privacy()),
                    );
                  },
                  child: ClipOval(
                      child: Container(
                          height: 48,
                          width: 48,
                          child: Image.asset(
                            "assets/imga-4.png",
                            fit: BoxFit.fill,
                          ))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    margin: new EdgeInsets.only(left: 15, top: 9),
                    child: Text(
                      "Privacy Policy",
                      style: spart.h1,
                    ),
                  ),
                ),
              ),
              //Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 3,
                  child: Container(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey[300],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 15,
                    bottom: 8
                ),
                child: InkWell(
                  onTap: (){

                  },
                  child: ClipOval(
                      child: Container(
                          height: 48,
                          width: 48,
                          child: Image.asset(
                            "assets/imga-5.png",
                            fit: BoxFit.fill,
                          ))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    margin: new EdgeInsets.only(left: 15, top: 9),
                    child: Text(
                      "Logout",
                      style: spart.h1,
                    ),
                  ),
                ),
              ),
              //Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 3,
                  child: Container(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}

class fpart extends StatelessWidget {
  static const TextStyle h1 = TextStyle(
      fontFamily: "Poppins-Bold", fontWeight: FontWeight.w500, fontSize: 24);

  static const TextStyle tex = TextStyle(
      fontFamily: "Poppins-Bold",
      fontWeight: FontWeight.w500,
      fontSize: 12,
      color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    final MediaQueryData _mediaQueryData = MediaQuery.of(context);
    final cheight = _mediaQueryData.size.height;
    return Container(

      color: Colors.white,
      height: 250,
      //margin: new EdgeInsets.all(15),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Sagar Shah",
              style: h1,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
              child: Text(
                "sagarshah021098@gmail.com",
                style: tex,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "9320711080",
                style: tex,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(
                "Address",
                style: h1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
              child: Text(
                "A / 702, Address lane 1, Address lane 2, Mumbai, Maharashtra - 400086",
                style: tex,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
