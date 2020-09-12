import 'package:flutter/material.dart';
import 'package:flutter_basics/screens/cart_screen.dart';
import 'package:flutter_basics/screens/home_screen.dart';
import 'package:flutter_basics/screens/products_screen.dart';
import 'package:flutter_basics/screens/profile_screen.dart';
import 'package:flutter_basics/screens/splash_screen.dart';
import 'package:flutter_basics/utils/app_routes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Argel Bejarano - Flutter GDE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: SplashScreen(),
      initialRoute: AppRoutes.splashscreen,
      routes: {
        AppRoutes.splashscreen: (BuildContext context) => SplashScreen(),
        AppRoutes.home: (BuildContext context) => HomeScreen(title: 'Hello Widgets',),
        AppRoutes.products: (BuildContext context) => ProductScreen(),
        AppRoutes.cart: (BuildContext context) => CartScreen(),
        AppRoutes.profile: (BuildContext context) => ProfileScreen(),
      },
      onGenerateRoute: (setting){}, //TODO use in next video to replace route from above
    );
  }
}