import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uitask/Screens/profile/components/body.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Body(),
    );
  }
}
