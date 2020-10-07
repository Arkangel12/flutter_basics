import 'package:flutter/material.dart';
import 'package:flutter_basics/screens/cart_screen.dart';
import 'package:flutter_basics/screens/home_screen.dart';
import 'package:flutter_basics/screens/products_screen.dart';
import 'package:flutter_basics/screens/profile_screen.dart';
import 'package:flutter_basics/screens/splash_screen.dart';
import 'package:flutter_basics/screens/todo_screen.dart';
import 'package:flutter_basics/utils/app_routes.dart';
import 'package:flutter_basics/widgets/fade_transition_route.dart';
import 'package:flutter_basics/widgets/scale_transition_route.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Argel Bejarano - Flutter GDE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: AppRoutes.splashscreen,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case (AppRoutes.splashscreen):
            return MaterialPageRoute(
                builder: (context) => const SplashScreen());
          case (AppRoutes.home):
            return MaterialPageRoute(
              builder: (context) => const HomeScreen(
                title: 'Either',
              ),
            );
          case (AppRoutes.products):
            return FadeTransitionRoute(widget: const ProductScreen());
          case (AppRoutes.cart):
            return FadeTransitionRoute(widget: const CartScreen());
          case (AppRoutes.profile):
            final name = settings.arguments;
            return ScaleTransitionRoute(
              //This cannot be [const] because of the [name] variable
              widget: ProfileScreen(
                name: name,
              ),
            );
          case (AppRoutes.todos):
            return FadeTransitionRoute(widget: const TodoScreen());
          default:
            return MaterialPageRoute(
              builder: (context) => HomeScreen(
                title: '@ArkangelB',
              ),
            );
        }
      },
    );
  }
}
