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
      child: HomeScreen(),
      alignment: Alignment.center,
    ),
    Container(
      child: LibScreen(),
      alignment: Alignment.center,
    ),
    Container(
      child: SettingsScreen(),
      alignment: Alignment.center,
    )
  ];

  void _onTapItem(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.lightGreen,
        ),
        darkTheme: ThemeData.dark(useMaterial3: true),
        debugShowCheckedModeBanner: false, //バナーの消去
        title: 'CLIP',
        home: Scaffold(
          floatingActionButton: FloatingActionButton(onPressed: null),
          body: _pages[_selectIndex],
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.black.withOpacity(0.3),
            title: Text("CLIP"),
            actions: <Widget>[
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingsScreen(),
                        fullscreenDialog: true,
                      ),
                    );
                  },
                  icon: Icon(Icons.settings))
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color.fromARGB(255, 33, 33, 33),
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'Library',
              ),
            ],
            currentIndex: _selectIndex,
            onTap: _onTapItem,
          ),
        ));
  }
}
