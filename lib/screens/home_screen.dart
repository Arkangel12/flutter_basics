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
            RaisedButton(
              child: Text('Product'),
              onPressed: () => Navigator.of(context).push(
                ProductScreen.route(),
              ),
            ),
            RaisedButton(
              child: Text('Cart'),
              onPressed: () => Navigator.of(context).push(
                CartScreen.route(),
              ),
            ),
            RaisedButton(
              child: Text('Profile'),
              onPressed: () => Navigator.of(context).push(
                ProfileScreen.route(name: 'Arwen'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
