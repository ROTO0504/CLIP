import 'package:clip/view/routes/home.dart';
import 'package:clip/view/routes/library.dart';
import 'package:clip/view/routes/settings.dart';
import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  var _selectIndex = 0;

  var _pages = <Widget>[
    Container(
      child: LibScreen(),
      alignment: Alignment.center,
    ),
    Container(
      child: HomeScreen(),
      alignment: Alignment.center,
    ),
    Container(
      child: SettingsScreen(),
      alignment: Alignment.center,
    ),
  ];

  void _onTapItem(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectIndex],
      appBar: AppBar(
        title: Text("あけおめ！！！！"),
        actions: <Widget>[
          IconButton(onPressed: () => {}, icon: Icon(Icons.settings))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
        ],
        currentIndex: _selectIndex,
        onTap: _onTapItem,
      ),
    );
  }
}
