import 'package:flutter/material.dart';
import 'package:flushbar/flushbar.dart';

class case1 extends StatefulWidget {
  @override
  _case1State createState() => _case1State();
}

class _case1State extends State<case1> {
  bool pressAttention1 = true;
  bool pressAttention2 = true;
  bool pressAttention3 = true;
  bool pressAttention4 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 80, bottom: 20, left: 28),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "CASE1",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20, left: 500)),
                new SizedBox(
                  width: 230.0,
                  height: 50.0,
                  child: new RaisedButton(
                      child: new Text('RED'),
                      textColor: Colors.black,
                      color: pressAttention1 ? Colors.grey : Colors.red,
                      onPressed: () => {
                            setState(() => pressAttention1 = !pressAttention1),
                            pressAttention2 = true,
                            pressAttention3 = true,
                            pressAttention4 = true,
                            Flushbar(
                                flushbarPosition: FlushbarPosition.TOP,
                                title: '',
                                messageText: Text(
                                  "CASE  1",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                backgroundColor: Colors.grey[300],
                                duration: Duration(seconds: 5))
                              ..show(context),
                          }),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20, left: 500)),
                new SizedBox(
                  width: 230.0,
                  height: 50.0,
                  child: new RaisedButton(
                      child: new Text('GREEN'),
                      textColor: Colors.black,
                      color: pressAttention2 ? Colors.grey : Colors.green,
                      onPressed: () => {
                            setState(() => pressAttention2 = !pressAttention2),
                            pressAttention1 = true,
                            pressAttention3 = true,
                            pressAttention4 = true,
                            Flushbar(
                              flushbarPosition: FlushbarPosition.TOP,
                              title: '',
                              messageText: Text(
                                "CASE  1",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              backgroundColor: Colors.grey[300],
                              duration: Duration(seconds: 5),
                            )..show(context),
                          }),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20, left: 500)),
                new SizedBox(
                  width: 230.0,
                  height: 50.0,
                  child: new RaisedButton(
                      child: new Text('BLUE'),
                      textColor: Colors.black,
                      color: pressAttention3 ? Colors.grey : Colors.blue,
                      onPressed: () => {
                            setState(() => pressAttention3 = !pressAttention3),
                            pressAttention1 = true,
                            pressAttention2 = true,
                            pressAttention4 = true,
                            Flushbar(
                              flushbarPosition: FlushbarPosition.TOP,
                              title: '',
                              messageText: Text(
                                "CASE  1",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              backgroundColor: Colors.grey[300],
                              duration: Duration(seconds: 5),
                            )..show(context),
                          }),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20, left: 500)),
                new SizedBox(
                  width: 230.0,
                  height: 50.0,
                  child: new RaisedButton(
                      child: new Text('YELLOW'),
                      textColor: Colors.black,
                      color: pressAttention4 ? Colors.grey : Colors.yellow,
                      onPressed: () => {
                            setState(() => pressAttention4 = !pressAttention4),
                            pressAttention1 = true,
                            pressAttention2 = true,
                            pressAttention3 = true,
                            Flushbar(
                              flushbarPosition: FlushbarPosition.TOP,
                              title: '',
                              messageText: Text(
                                "CASE  1",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              backgroundColor: Colors.grey[300],
                              duration: Duration(seconds: 5),
                            )..show(context),
                          }),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
