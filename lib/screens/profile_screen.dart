import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String name;

  const ProfileScreen({Key key, this.name}) : super(key: key);

  static Route<dynamic> route({String name}) {
    return MaterialPageRoute(
      builder: (BuildContext context) => ProfileScreen(
        name: name,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name),),
      body: Center(
        child: Text('Profile Screen'),
      ),
    );
  }
}
