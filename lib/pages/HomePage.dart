import 'package:bc_eats/pages/Agreement.dart';
import 'package:bc_eats/pages/Feed.dart';
import 'package:bc_eats/pages/Notifications.dart';
import 'package:bc_eats/pages/Post.dart';
import 'package:bc_eats/pages/Settings.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  List<Widget> _screens = [
    Notifications(),
    Feed(),
    Post(),
    Agreement(),
    Settings(),
  ];
  //navigating through the pages
  // Marcella was here
  int _selectedIndex = 1;
//Sets Feed to default page when app is opened
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  //Creating the PageView function names

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  } //Switching pages

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _screens,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        //Switching pages
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
                color: _selectedIndex == 0 ? Colors.yellow : Colors.white,
              ),
              title: Text(
                'Notifications',
                style: TextStyle(
                  color: _selectedIndex == 0 ? Colors.yellow : Colors.blue,
                ),
              ),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.comment,
                color: _selectedIndex == 1 ? Colors.yellow : Colors.white,
              ),
              title: Text(
                'Feed',
                style: TextStyle(
                  color: _selectedIndex == 1 ? Colors.yellow : Colors.blue,
                ),
              ),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_a_photo,
                color: _selectedIndex == 2 ? Colors.yellow : Colors.white,
              ),
              title: Text(
                'Post',
                style: TextStyle(
                  color: _selectedIndex == 2 ? Colors.yellow : Colors.blue,
                ),
              ),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.security,
                color: _selectedIndex == 3 ? Colors.yellow : Colors.white,
              ),
              title: Text(
                'Agreement',
                style: TextStyle(
                  color: _selectedIndex == 3 ? Colors.yellow : Colors.blue,
                ),
              ),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: _selectedIndex == 4 ? Colors.yellow : Colors.white,
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                  color: _selectedIndex == 4 ? Colors.yellow : Colors.blue,
                ),
              ),
              backgroundColor: Colors.blue),
        ],
      ),
    );
  }
}
