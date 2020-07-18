import 'package:flutter/material.dart';

class blue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        padding: EdgeInsets.all(80),
        child: Text(
          'BLUE',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
