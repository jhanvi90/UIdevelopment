import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
  return Expanded(
    child: Container(
      height: height*0.09,
      padding: EdgeInsets.only(left: 20.0),
      child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Vannak Niza', style: TextStyle(fontWeight: FontWeight.bold),),
            Text('Morning,evryone!!'),
            Row(children: [
            Icon(Icons.music_note,  size: 15.0, color: Colors.white,),
            Text('Original sound - Album name - song',
            style: TextStyle(fontSize: 12.0))]),
          ])
    )
  );
}
}
