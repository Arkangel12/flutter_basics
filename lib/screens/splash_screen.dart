import 'package:flutter/material.dart';
import 'package:flutter_basics/utils/app_routes.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(milliseconds: 1000),
      () => Navigator.of(context).pushReplacementNamed(AppRoutes.home),
      // () => Navigator.of(context).pushReplacement(
      //   MaterialPageRoute(
      //     builder: (context) => HomeScreen(
      //       title: 'Hello Widgets',
      //     ),
      //   ),
      // ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Spacer(),
            Center(
              child: FractionallySizedBox(
                widthFactor: .6,
                child: FlutterLogo(size: 400),
              ),
            ),
            Spacer(),
            CircularProgressIndicator(),
            Spacer(),
            Text('Bienvenido/Welcome')
          ],
        ),
      ),
    );
  }
}
