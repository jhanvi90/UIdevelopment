import 'package:flutter/material.dart';

import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          SizedBox(height: height*0.05),
          ProfilePic(),
          SizedBox(height: height*0.02),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Malcin Blowen"),
              Padding(
                padding:EdgeInsets.only(left: width*0.03),
                child: Icon(Icons.edit,color: Colors.white,),
              ),
            ],
          ),
          SizedBox(height: height*0.18),

          Padding(
            padding:EdgeInsets.only(left:width*0.05,right: width*0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("My Oders",style: TextStyle(fontSize: 16),),
                Icon(Icons.arrow_right,color: Colors.white,)
              ],
            ),
          ),
          SizedBox(height: height*0.03),
          Divider(color: Colors.grey,thickness: 2,),

          Padding(
            padding:EdgeInsets.only(left:width*0.05,right: width*0.05,top: height*0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Shipping Address",style: TextStyle(fontSize: 16),),
                Icon(Icons.arrow_right,color: Colors.white,)
              ],
            ),
          ),
          SizedBox(height: height*0.03),
          Divider(color: Colors.grey,thickness: 2,),


          Padding(
            padding:EdgeInsets.only(left:width*0.05,right: width*0.05,top: height*0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Promocodes",style: TextStyle(fontSize: 16),),
                Icon(Icons.arrow_right,color: Colors.white,)
              ],
            ),
          ),
          SizedBox(height: height*0.03),
          Divider(color: Colors.grey,thickness: 2,),

          Padding(
            padding:EdgeInsets.only(left:width*0.05,right: width*0.05,top: height*0.02),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("My Reviews",style: TextStyle(fontSize: 16),),
                Icon(Icons.arrow_right,color: Colors.white,)
              ],
            ),
          ),
          SizedBox(height: height*0.03),
          Divider(color: Colors.grey,thickness: 2,)


        ],
      ),
    );
  }
}
