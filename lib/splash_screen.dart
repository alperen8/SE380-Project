import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:se380final/main_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    asyncInit();
  }

  Future<void> asyncInit() async {
    await Firebase.initializeApp();
    //await Future.delayed(Duration(seconds: 5));
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => MainPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
