import 'package:flutter/material.dart';
import 'package:uitask/Screens/Home/components/body.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: HomeBody(),
    );
  }
}
