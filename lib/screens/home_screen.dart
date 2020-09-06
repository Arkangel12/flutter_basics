import 'package:flutter/material.dart';
import 'package:flutter_basics/screens/cart_screen.dart';
import 'package:flutter_basics/screens/products_screen.dart';
import 'package:flutter_basics/screens/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key key, @required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            customButton(
              textOnButton: 'Product',
              context: context,
              route: ProductScreen.route(),
            ),
            customButton(
              textOnButton: 'Cart',
              context: context,
              route: CartScreen.route(),
            ),
            customButton(
              textOnButton: 'Profile',
              context: context,
              route: ProfileScreen.route(name: 'Arwen'),
            ),
          ],
        ),
      ),
    );
  }

  Widget customButton({
    @required String textOnButton,
    @required BuildContext context,
    @required Route<dynamic> route,
  }) {
    return RaisedButton(
      child: Text(textOnButton),
      onPressed: () => Navigator.of(context).push(route),
    );
  }
}
