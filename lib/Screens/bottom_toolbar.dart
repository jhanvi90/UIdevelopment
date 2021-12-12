import 'package:flutter/material.dart';
import 'package:uitask/Screens/videoPlay/videoPlaying.dart';
import 'package:uitask/Screens/profile/profileScreen.dart';
import 'Home/Homescreen .dart';


class ScreenTabs extends StatefulWidget {
  const ScreenTabs({Key key}) : super(key: key);
  @override
  _screenTabsState createState() => _screenTabsState();
}

class _screenTabsState extends State<ScreenTabs> {
  int _selectedIndex = 0;

  var _pageData = [
    HomeScreen(),
    VideoPlay(),
    VideoPlay(),
    VideoPlay(),
    Profile()
  ];

  void _onItemTapped(int index)
  {
    setState(()
    {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: _pageData[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon:  Icon(Icons.home,color: Colors.white,size: 30,),
              label: 'Home'),

            BottomNavigationBarItem(
                icon:  Icon(Icons.search,color: Colors.white,size: 30,),
                label: 'Search'),

            BottomNavigationBarItem(
                icon:  Icon(Icons.add_shopping_cart,color: Colors.white,size: 30,),
                label: 'Cart'),


            BottomNavigationBarItem(
                icon:  Icon(Icons.note_outlined,color: Colors.white,size: 30,),
                label: 'Notes'),


            BottomNavigationBarItem(
                icon:  Icon(Icons.person,color: Colors.white,size: 30,),
                label: 'Me'),


          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          onTap: _onItemTapped,
          unselectedItemColor: Colors.white,
          elevation: 5,
          type: BottomNavigationBarType.fixed,
        ));

  }
}
