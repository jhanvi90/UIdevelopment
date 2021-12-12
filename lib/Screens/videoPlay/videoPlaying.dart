import 'package:flutter/material.dart';
import 'package:uitask/Screens/videoPlay/components/video_description.dart';
import 'package:uitask/Screens/videoPlay/components/actions_toolbar.dart';

class VideoPlay extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      var height=MediaQuery.of(context).size.height;
      var width=MediaQuery.of(context).size.width;
      return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: <Widget>[
            // Top section
            topSection(height,width),
            // Middle expanded
            middleSection(height,width),
          ],
        ),
      );
    }

    Widget topSection(double height, double width) {
      return Container(
        height: height*0.13,
        padding: EdgeInsets.only(bottom: 15.0),
        alignment: Alignment(0.0, 1.0),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Following'),
              Container(
                width: 15.0,
              ),
              Text('MarketPlace',
                  style: TextStyle(fontWeight: FontWeight.bold))
            ]),
      );
    }

    Widget  middleSection(double height, double width) {
      return Expanded(
          child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[VideoDescription(), ActionsToolbar()]));
    }
  }

