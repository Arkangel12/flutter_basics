import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key key}) : super(key: key);
  /*
  bool test;

  void addProduct() {
    if (test) {
      test = false;
    } else {
      test = true;
    }
  }
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Cart Screen'),
      ),
    );
  }
}
