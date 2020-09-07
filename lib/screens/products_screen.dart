import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/fade_transition_route.dart';

class ProductScreen extends StatelessWidget {
  static Route<dynamic> route() {
    return FadeTransitionRoute(
      widget: ProductScreen(),
      duration: Duration(milliseconds: 500),
    );
    // return MaterialPageRoute(
    //   builder: (BuildContext context) => ProductScreen(),
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Product Screen'),
      ),
    );
  }
}
