import 'package:flutter/material.dart';
import 'package:flutter_basics/utils/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(milliseconds: 1000),
      () => Navigator.of(context).pushNamedAndRemoveUntil(
        AppRoutes.home,
        (route) => false,
      ),
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
