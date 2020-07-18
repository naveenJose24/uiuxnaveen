import 'package:flutter/material.dart';

class green extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.all(80),
        child: Text(
          'GREEN',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
