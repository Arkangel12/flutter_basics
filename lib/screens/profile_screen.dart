import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String name;

  const ProfileScreen({
    Key key,
    @required this.name,
  })  : assert(name != null, 'Name cannot be null'),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: FlutterLogo(size: 150)),
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              child: Text(
                'Profile Screen',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
