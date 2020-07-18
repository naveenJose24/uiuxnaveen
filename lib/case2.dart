import 'package:flutter/material.dart';
import 'package:flushbar/flushbar.dart';
import 'package:uiuxnaveen/screen/blue.dart';
import 'package:uiuxnaveen/screen/green.dart';
import 'package:uiuxnaveen/screen/red.dart';

class case2 extends StatefulWidget {
  @override
  _case1State createState() => _case1State();
}

class _case1State extends State<case2> {
  bool pressAttention1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: 50, bottom: 20, left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "CASE 2",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 280, bottom: 20, left: 55)),
                new SizedBox(
                  width: 100.0,
                  height: 50.0,
                  child: new RaisedButton(
                      child: new Text('RED'),
                      textColor: Colors.black,
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => (red()))),
                          }),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 280, bottom: 20, left: 55)),
                new SizedBox(
                  width: 100.0,
                  height: 50.0,
                  child: new RaisedButton(
                      child: new Text('GREEN'),
                      textColor: Colors.black,
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => (green()))),
                          }),
                ),
                Padding(
                    padding: EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                ))
              ],
            ),
            Column(
              children: [
                new SizedBox(
                  width: 230.0,
                  height: 50.0,
                  child: new RaisedButton(
                      child: new Text('BLUE'),
                      textColor: Colors.black,
                      onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => (blue()))),
                          }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
