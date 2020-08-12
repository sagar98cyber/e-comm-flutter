import 'package:dtabbarjstore/data.dart';
import 'package:dtabbarjstore/profilepart/auth/otpscreen.dart';
import 'package:flutter/material.dart';


class uinfo extends StatefulWidget {
  @override
  _uinfoState createState() => _uinfoState();
}

class _uinfoState extends State<uinfo> {
  static const TextStyle h1 = TextStyle(
      fontFamily: "Poppins-Bold",
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      fontSize: 22);
  static const TextStyle h2 = TextStyle(
      fontFamily: "Poppins-Bold",
      color: Colors.grey,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      fontSize: 12);

  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  String mobile;

  // ignore: non_constant_identifier_names
  Widget FormUI() {
    return Container(
      color: Colors.white,
      child: Container(
        margin: new EdgeInsets.all(15),
        height: 250,
        child: new Column(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "What's your number",
                    style: h1,
                  ),
                ),
                Text(
                  "Enter your mobile number to continue",
                  style: h2,
                ),
                new SizedBox(height: 20.0),
                new TextFormField(
                    decoration: new InputDecoration(hintText: 'Mobile Number'),
                    keyboardType: TextInputType.phone,
                    maxLength: 10,
                    validator: validateMobile,
                    onSaved: (String val) {
                      mobile = val;
                    }),

              ],
            ),
            new SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
              //  GestureDetector(

                 ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      bottom: const Radius.circular(14),top:const Radius.circular(14),
                    ),
                    child: new RaisedButton(

                      color: data.maincolor,
                      textColor: Colors.white,
                      onPressed: _sendToServer,
                      child: new Text('Send',style: TextStyle(
                          fontFamily: "Poppins-Bold",
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                          fontSize: 14),),
                    ),
                  ),
              //  ),
              ],
            )
          ],
        ),
      ),
    );
  }

  String validateMobile(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Mobile is Required";
    } else if (value.length != 10) {
      return "Mobile number must 10 digits";
    } else if (!regExp.hasMatch(value)) {
      return "Mobile Number must be digits";
    }
   return null;
    //else{

    //}
  }

  _sendToServer() {
    if (_key.currentState.validate()) {
      // No any error in validation
      _key.currentState.save();
     // print("Name $name");
      print("Mobile $mobile");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => otpscreen()),
      );
     // print("Email $email");
    } else {
      // validation error
      setState(() {
        _validate = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE9E9E9),
      body: //Center(
          // child:
          Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(
            bottom: const Radius.circular(30),
            //top:const Radius.circular(14),
          ),
          child: Container(
            margin: new EdgeInsets.only(top:15.0),
            child: new Form(
              key: _key,
              autovalidate:_validate,
              child: FormUI(),
            ),
          ),
        ),
      ),

      // ),
    );
  }
}
