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

// import 'package:flutter/material.dart';
// import 'package:flushbar/flushbar.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       home: Home(),
//     );
//   }
// }

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   bool pressAttention1 = false;
//   bool pressAttention2 = false;
//   bool pressAttention3 = false;
//   bool pressAttention4 = false;

//   void changedata1() {
//     print('red');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Column(
//           children: [
//             Container(
//               padding: EdgeInsets.only(top: 50, bottom: 20),
//               child: Align(
//                 alignment: Alignment.topLeft,
//                 child: Text(
//                   "CASE1",
//                   style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ),
//             Column(
//               children: [
//                 Padding(
//                     padding: EdgeInsets.only(top: 20, bottom: 20, left: 500)),
//                 new SizedBox(
//                   width: 230.0,
//                   height: 50.0,
//                   child: new RaisedButton(
//                       child: new Text('Red'),
//                       textColor: Colors.black,
//                       color: pressAttention1 ? Colors.grey : Colors.red,
//                       onPressed: () => {
//                             setState(() => pressAttention1 = !pressAttention1),
//                             pressAttention2 = true,
//                             pressAttention3 = true,
//                             pressAttention4 = true,
//                             Flushbar(
//                               flushbarPosition: FlushbarPosition.TOP,
//                               title: '',
//                               messageText: Text(
//                                 "CASE  1",
//                                 style: TextStyle(
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                               backgroundColor: Colors.grey[300],
//                             )..show(context),
//                           }),
//                 ),
//                 Padding(
//                     padding: EdgeInsets.only(top: 20, bottom: 20, left: 500)),
//                 new SizedBox(
//                   width: 230.0,
//                   height: 50.0,
//                   child: new RaisedButton(
//                       child: new Text('GREEN'),
//                       textColor: Colors.black,
//                       color: pressAttention2 ? Colors.grey : Colors.green,
//                       onPressed: () => {
//                             setState(() => pressAttention2 = !pressAttention2),
//                             pressAttention1 = true,
//                             pressAttention3 = true,
//                             pressAttention4 = true,
//                             Flushbar(
//                               flushbarPosition: FlushbarPosition.TOP,
//                               title: '',
//                               messageText: Text(
//                                 "CASE  1",
//                                 style: TextStyle(
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                               backgroundColor: Colors.grey[300],
//                               //duration: Duration(seconds: 3),
//                             )..show(context),
//                           }),
//                 ),
//                 Padding(
//                     padding: EdgeInsets.only(top: 20, bottom: 20, left: 500)),
//                 new SizedBox(
//                   width: 230.0,
//                   height: 50.0,
//                   child: new RaisedButton(
//                       child: new Text('BLUE'),
//                       textColor: Colors.black,
//                       color: pressAttention3 ? Colors.grey : Colors.blue,
//                       onPressed: () => {
//                             setState(() => pressAttention3 = !pressAttention3),
//                             pressAttention1 = true,
//                             pressAttention2 = true,
//                             pressAttention4 = true,
//                             Flushbar(
//                               flushbarPosition: FlushbarPosition.TOP,
//                               title: '',
//                               messageText: Text(
//                                 "CASE  1",
//                                 style: TextStyle(
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                               backgroundColor: Colors.grey[300],
//                             )..show(context),
//                           }),
//                 ),
//                 Padding(
//                     padding: EdgeInsets.only(top: 20, bottom: 20, left: 500)),
//                 new SizedBox(
//                   width: 230.0,
//                   height: 50.0,
//                   child: new RaisedButton(
//                       child: new Text('YELLOW'),
//                       textColor: Colors.black,
//                       color: pressAttention4 ? Colors.grey : Colors.yellow,
//                       onPressed: () => {
//                             setState(() => pressAttention4 = !pressAttention4),
//                             pressAttention1 = true,
//                             pressAttention2 = true,
//                             pressAttention3 = true,
//                             Flushbar(
//                               flushbarPosition: FlushbarPosition.TOP,
//                               title: '',
//                               messageText: Text(
//                                 "CASE  1",
//                                 style: TextStyle(
//                                     color: Colors.black,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                               backgroundColor: Colors.grey[300],
//                             )..show(context),
//                           }),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Colors.blue,
//         iconSize: 0,
//         items: [
//           BottomNavigationBarItem(
//               icon: Icon(Icons.ac_unit),
//               title: Text(
//                 "CASE 1",
//                 style: TextStyle(color: Colors.white),
//               ),
//               backgroundColor: Colors.white),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.ac_unit),
//               title: Text(
//                 "CASE 2",
//                 style: TextStyle(color: Colors.white),
//               ),
//               backgroundColor: Colors.white)
//         ],
//         onTap: (int index) => {},
//       ),
//     );
//   }
// }
