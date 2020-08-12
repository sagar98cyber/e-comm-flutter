import 'package:dtabbarjstore/data.dart';
import 'package:flutter/material.dart';

class updatedetails extends StatefulWidget {
  @override
  _updatedetailsState createState() => _updatedetailsState();
}
_fieldFocusChange(BuildContext context, FocusNode currentFocus,FocusNode nextFocus) {
  currentFocus.unfocus();

  FocusScope.of(context).requestFocus(nextFocus);
}
class _updatedetailsState extends State<updatedetails> {
  final FocusNode _name = FocusNode();
  final FocusNode _mail = FocusNode();
  final FocusNode _address = FocusNode();
  final FocusNode _update = FocusNode();
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
  String name, email,address;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Profile'),
      ),
      body: new SingleChildScrollView(
        child: new Container(
          margin: new EdgeInsets.all(15.0),
          child: new Form(
            key: _key,
            autovalidate: _validate,
            child: FormUI(),
          ),
        ),
      ),
    );
  }

  Widget FormUI() {
    return new Column(
      //mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Update Your Profile",
          style: h1


        ),
        new TextFormField(
          decoration: new InputDecoration(hintText: 'Full Name'),
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.next,
          maxLength: 20,
          focusNode: _name,
          onFieldSubmitted: (Term){
            _fieldFocusChange(context, _name, _mail);
          },
          validator: validateName,
          onSaved: (String val) {
            name = val;
          },
        ),
        new TextFormField(
            decoration: new InputDecoration(hintText: 'Email ID'),
            keyboardType: TextInputType.emailAddress,
            maxLength: 20,
            textInputAction: TextInputAction.next,
            focusNode: _mail,
            onFieldSubmitted: (Term){

              _fieldFocusChange(context, _mail,_address);

            },
            validator: validateEmail,
            onSaved: (String val) {
              email = val;
            }),
        new TextFormField(
          keyboardType: TextInputType.text,
            decoration:
                new InputDecoration(hintText: 'Address lane1, Address lane 2,'),

            maxLines: 2,
            textInputAction: TextInputAction.done,
            focusNode: _address,
            onFieldSubmitted: (Term){
              _address.unfocus();
            },
            validator: validateAddress,
            onSaved: (String val) {
              address = val;
            }),
        new SizedBox(height: 15.0),
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
                focusNode: _update,
                color: data.maincolor,
                textColor: Colors.white,
                onPressed: _sendToServer,
                child: new Text(
                  'Update',
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
    );
  }

  String validateName(String value) {
    String patttern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Name is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Name must be a-z and A-Z";
    }
    return null;
  }

  String validateAddress(String value) {
    String patttern = r'(^[a-zA-Z ,]*$)';
    RegExp regExp = new RegExp(patttern);
    if (value.length == 0) {
      return "Name is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Name must be a-z and A-Z";
    }
    return null;
  }

  String validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Email is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Invalid Email";
    } else {
      return null;
    }
  }

  _sendToServer() {
    if (_key.currentState.validate()) {
      // No any error in validation
      _key.currentState.save();
      print("Name $name");
      print("Address $address");
      print("Email $email");
    } else {
      // validation error
      setState(() {
        _validate = true;
      });
    }
  }
}
