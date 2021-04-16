import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Center(
              child: Text('About Company',
                  style: TextStyle(
                      fontFamily: 'Gothic',
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    splashColor: Colors.pink.withOpacity(0.05),
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.of(context).pop();
                    })),
          ],
        ),
      ),
    );
  }
}
