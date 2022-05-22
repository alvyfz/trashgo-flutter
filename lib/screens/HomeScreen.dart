import 'package:flutter/material.dart';
import 'package:trashgo/pages/ChatPage.dart';
import 'package:trashgo/pages/HomePage.dart';
import 'package:trashgo/pages/MapPage.dart';
import 'package:trashgo/pages/ProfilePage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    ChatPage(),
    Text(
      'Index 2: School',
    ),
    MapPage(),
    ProfilePage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color(0xffF3DEFF),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined, size: 35), label: ""),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat_bubble_outline,
                  size: 30,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundColor: Color(0xff9C4DCC),
                  radius: 20,
                  child: Icon(
                    Icons.qr_code,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.location_on_outlined,
                  size: 35,
                ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  size: 35,
                ),
                label: "",
              ),
            ],
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            unselectedItemColor: Colors.black,
            selectedItemColor: Color(0xff9C4DCC),
            onTap: _onItemTapped));
  }
}
