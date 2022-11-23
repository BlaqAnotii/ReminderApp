import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:statemyapp/widgets/home_widget.dart';
import 'package:statemyapp/widgets/favoritewidget.dart';
import 'package:statemyapp/widgets/profile_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const List _widgetOption = <Widget>[
    HomeWidget(),
    LaundryWidget(),
    ProfileWidget(),
  ];

  static const List _titleOption = <Widget>[
    Text("Home",style: TextStyle(color: Color.fromARGB(255, 58, 29, 29)),),
    Text("Favorites",style: TextStyle(color: Color.fromARGB(255, 58, 29, 29)),),
    Padding(
      padding: EdgeInsets.only(right: 8),
      child: Text("Profile",style: TextStyle(color: Color.fromARGB(255, 58, 29, 29)),),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 180, 222, 241),
          centerTitle: true,
          title: _titleOption.elementAt(_selectedIndex),
        ),
        body: _widgetOption.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.lightBlueAccent,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          currentIndex: _selectedIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorites"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "Profile"),
          ],
        ));
  }
}
