import 'package:flutter/material.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Center(
          child: CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage('https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7'),
                backgroundColor: Colors.transparent,
              ),
        );
  }
}
