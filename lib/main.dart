
import 'package:dtabbarjstore/dtabbar/dtabbar.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: ''),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>dtabarstore(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F8FB),
      body: FlareActor("assets/ss.flr",
        alignment: Alignment.center,
        fit: BoxFit.contain,
        animation: "splashscreen",),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
