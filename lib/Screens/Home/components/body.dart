import 'package:flutter/material.dart';
import 'package:uitask/Screens/models/model.dart';
class HomeBody extends StatefulWidget {
  const HomeBody({Key key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {

  List<Data> storyList =
  [
    Data(name: "Your Story",image: "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7"),
    Data(name: "Harry",image: "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7"),
    Data(name: "Vatsal",image: "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7"),
    Data(name: "Nil",image: "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7"),
    Data(name: "Yagi",image: "https://secure.gravatar.com/avatar/ef4a9338dca42372f15427cdb4595ef7")
  ];


  List<Data> categoryList =
  [
    Data(name: "Category",image: ""),
    Data(name: "Category",image: ""),
    Data(name: "Category",image: ""),
    Data(name: "Category",image: ""),
    Data(name: "Category",image: ""),
    Data(name: "Category",image: ""),
    Data(name: "Category",image: ""),
    Data(name: "Category",image: ""),
  ];

  List<Data> suggestionsList =
  [
    Data(name: "Product_name",image: "assets/images/photo-1610878180933-123728745d22.jpeg"),
    Data(name: "Product_name",image: "assets/images/photo-1610878180933-123728745d22.jpeg"),
    Data(name: "Product_name",image: "assets/images/photo-1610878180933-123728745d22.jpeg"),
    Data(name: "Product_name",image: "assets/images/photo-1610878180933-123728745d22.jpeg"),
    Data(name: "Product_name",image: "assets/images/photo-1610878180933-123728745d22.jpeg"),

  ];

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Padding(
      padding:  EdgeInsets.only(top: height*0.06),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Loci Horre"),
          SizedBox(height: height*0.05,),
          viewStoryList(height, width),
          Divider(color: Colors.grey,thickness: 2,),
          viewCategoryList(height, width),
          Divider(color: Colors.grey,thickness: 2,),
          Padding(padding:EdgeInsets.all(height*0.01),child: Row(children: [Text("#Suggestions")])),
          viewDataList(height, width),
          Divider(color: Colors.grey,thickness: 2,),
          Padding(
            padding: EdgeInsets.all(height*0.01),
            child: Row(children: [Text("Top_Pick_For_You")]),
          ),
          viewDataList(height, width),
          Divider(color: Colors.grey,thickness: 2,),
          Padding(padding: EdgeInsets.all(height*0.01),child: Row(children: [Text("Recently Added")])),
          viewDataList(height, width)
        ],
      ),
    );
  }


  Widget viewStoryList(double height,double width)
  {
    return Container(
      height: height*0.15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: storyList.length,
          itemBuilder: (BuildContext context,int index){
            return Padding(
              padding:  EdgeInsets.all(height*0.01),
              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 35.0,
                        backgroundImage: NetworkImage(storyList[index].image),
                        backgroundColor: Colors.transparent,
                      ),
                      SizedBox(width: width*0.03,)
                    ],
                  ),
                  SizedBox(height: height*0.02),
                  Text(storyList[index].name)
                ],
              ),
            );
          }
      ),
    );
  }

  Widget viewCategoryList(double height,double width)
  {
    return Container(
      height: height*0.13,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoryList.length,
          itemBuilder: (BuildContext context,int index){
            return Padding(
              padding:EdgeInsets.all(height*0.01),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){},
                          icon: Icon(Icons.sports_baseball,color: Colors.white,size: 40,)),
                      SizedBox(width: width*0.01,),
                    ],
                  ),
                  SizedBox(height: height*0.02),
                  Text(categoryList[index].name,style: TextStyle(fontSize: 12),),
                  SizedBox(height:height*0.01),
                ],
              ),
            );
          }
      ),
    );
  }

  Widget viewDataList(double height,double width)
  {
    return Container(
      height: height*0.15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: suggestionsList.length,
          itemBuilder: (BuildContext context,int index){
            return Padding(
              padding:EdgeInsets.all(height*0.01),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 80,height: 80,
                        child: Image.asset(suggestionsList[index].image),
                      ),
                      SizedBox(width: width*0.02),
                    ],
                  ),
                  SizedBox(height: height*0.01),
                  Text(suggestionsList[index].name,style: TextStyle(fontSize: 12),)
                ],
              ),
            );
          }
      ),
    );
  }

}
