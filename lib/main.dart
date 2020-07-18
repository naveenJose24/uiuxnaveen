import 'package:flutter/material.dart';
import 'package:uiuxnaveen/case1.dart';
import 'package:uiuxnaveen/case2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> children = [
    case1(),
    case2(),
  ];
  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        iconSize: 0,
        onTap: onTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit),
              title: Text(
                "CASE 1",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit),
              title: Text(
                "CASE 2",
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.white)
        ],
        // onTap: (int index) => {},
      ),
    );
  }
}

