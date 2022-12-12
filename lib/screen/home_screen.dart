import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:reminderapp/widgets/home_widget.dart';
import 'package:reminderapp/widgets/todo_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static final List _widgetOption = <Widget>[
    const HomeWidget(),
    const TodoWidget()
  ];
  static const List _titleOption = <Widget>[
    Text(
      "Home",
      style: TextStyle(color: Color.fromARGB(255, 58, 29, 29)),
    ),
    Text(
      "To-Do List",
      style: TextStyle(color: Color.fromARGB(255, 58, 29, 29)),
    ),
    Padding(
      padding: EdgeInsets.only(right: 8),
      child: Text(
        "Profile",
        style: TextStyle(color: Color.fromARGB(255, 58, 29, 29)),
      ),
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
                icon: Icon(Icons.add_alert), label: "To-do"),
          ],
        ));
  }
}
