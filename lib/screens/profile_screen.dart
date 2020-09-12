import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/scale_transition_route.dart';

class ProfileScreen extends StatelessWidget {
  final String name;

  const ProfileScreen({Key key, this.name}) : super(key: key);

  static Route<dynamic> route({String name}) {
    return ScaleTransitionRoute(
      widget: ProfileScreen(
        name: name,
      ),
    );
    // return MaterialPageRoute(
    //   builder: (BuildContext context) => ProfileScreen(
    //     name: name,
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    final name = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: Text('Profile Screen'),
      ),
    );
  }
}
