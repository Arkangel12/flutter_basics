import 'package:flutter/material.dart';
import 'package:flutter_basics/utils/app_routes.dart';

class HomeScreen extends StatelessWidget {
  final String title;

  const HomeScreen({
    Key key,
    @required this.title,
  })  : assert(title != null, 'Title cannot be null'),
        super(key: key);

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
              onPressed: () =>
                  Navigator.of(context).pushNamed(AppRoutes.products),
            ),
            RaisedButton(
              child: Text('Cart'),
              onPressed: () => Navigator.of(context).pushNamed(AppRoutes.cart),
            ),
            RaisedButton(
              child: Text('Profile'),
              onPressed: () => Navigator.of(context)
                  .pushNamed(AppRoutes.profile, arguments: 'Arwen'),
            )
          ],
        ),
      ),
    );
  }
}
