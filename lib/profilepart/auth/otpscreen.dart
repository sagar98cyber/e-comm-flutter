import 'package:dtabbarjstore/data.dart';
import 'package:dtabbarjstore/profilepart/auth/updatedetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class otpscreen extends StatefulWidget {
  @override
  _otpscreenState createState() => _otpscreenState();
}

class _otpscreenState extends State<otpscreen> {
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
            margin: new EdgeInsets.only(top: 15.0),
            child: new Form(
              key: _key,
              autovalidate: _validate,
              child: FormUI(),
            ),
          ),
        ),
      ),

      // ),
    );
  }

  static const TextStyle h1 = TextStyle(
      fontFamily: "Poppins-Bold",
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
      fontSize: 22);

  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  String mobile;

  Widget FormUI() {
    final FocusNode _otp = FocusNode();
    final FocusNode _verify = FocusNode();
    final FocusNode _weightFocus = FocusNode();
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
                    "Verify your number",
                    style: h1,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                          text: '6-Digit code sent to ',
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: '9320711080',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: data.maincolor)),
                    ],
                  ),
                ),
                new SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 100,
                      child: new TextFormField(
                          focusNode: _otp,
                          textAlign: TextAlign.center,
                          cursorWidth: 0,
                          decoration: new InputDecoration(
                            hintStyle: (TextStyle(letterSpacing: 4)),
                            hintText: '______',
                            disabledBorder: (const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.transparent, width: 0.5),
                            )),
                            enabledBorder: (const OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Colors.transparent, width: 0.5),
                            )),
                          ),
                          onFieldSubmitted: (term) {
                            _otp.unfocus();
                            _fieldFocusChange(context, _otp, _verify);
                          },
                          keyboardType: TextInputType.number,
                          maxLength: 6,
                          textInputAction: TextInputAction.done,
                          validator: validateMobile,
                          onSaved: (String val) {
                            mobile = val;
                          }),
                    ),
                  ],
                ),
              ],
            ),
            new SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                //  GestureDetector(

                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    bottom: const Radius.circular(14),
                    top: const Radius.circular(14),
                  ),
                  child: new RaisedButton(
                    color: data.maincolor,
                    focusNode: _verify,
                    textColor: Colors.white,
                    onPressed: _sendToServer,
                    child: new Text(
                      'Verify',
                      style: TextStyle(
                          fontFamily: "Poppins-Bold",
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                          fontSize: 14),
                    ),
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

  _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();

    SystemChannels.textInput.invokeMethod('TextInput.hide');
    FocusScope.of(context).requestFocus(nextFocus);
  }

  String validateMobile(String value) {
    String patttern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Is Required";
    } else if (value.length != 6) {
      return "Must 6 digits";
    } else if (!regExp.hasMatch(value)) {
      return "Must be digits";
    }
    return null;
  }

  _sendToServer() {
    if (_key.currentState.validate()) {
      // No any error in validation
      _key.currentState.save();
      //print("Name $name");
      print("Mobile $mobile");
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => updatedetails()),
      );
      // print("Email $email");
    } else {
      // validation error
      setState(() {
        _validate = true;
      });
    }
  }
}
