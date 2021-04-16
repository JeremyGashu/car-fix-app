import 'package:flutter/material.dart';

class Tips extends StatefulWidget {
  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  final _controller = PageController(initialPage: 0, viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
//        height: 250,
//        width: MediaQuery.of(context).size.width,
//        color: Colors.red,
              margin: EdgeInsets.all(5),
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _tipCard(
                      'gears.png',
                      'To prevent your car from Chasi breakage estimate the height of yoour car and the speed you are driving since the extension in the springs lower your car\'s height temporarily',
                      _controller),
                  _tipCard(
                      'gears.png',
                      'To prevent your car from Chasi breakage estimate the height of yoour car and the speed you are driving since the extension in the springs lower your car\'s height temporarily',
                      _controller),
                  _tipCard(
                      'gears.png',
                      'To prevent your car from Chasi breakage estimate the height of yo To prevent your car from Chasi breakage estimate the height of yoour car and the speed you are driving since the extension in the springs lower your car\'s height temporarily',
                      _controller),
                  _tipCard(
                      'gears.png',
                      'To prevent your car from Chasi breakage estimate the height of yo To prevent your car from Chasi breakage estimate the height of yoour car and the speed you are driving since the extension in the springs lower your car\'s height temporarily',
                      _controller),
                  _tipCard(
                      'gears.png',
                      'To prevent your car from Chasi breakage estimate the height of yoour car and the speed you are driving since the extension in the springs lower your car\'s height temporarily',
                      _controller),
                  _tipCard(
                      'gears.png',
                      'To prevent your car from Chasi breakage estimate the height of yoour car and the speed you are driving since the extension in the springs lower your car\'s height temporarily',
                      _controller),
                  _tipCard(
                      'gears.png',
                      'To prevent your car from Chasi breakage estimate the height of yo To prevent your car from Chasi breakage estimate the height of yo To prevent your car from Chasi breakage estimate the height of yoour car and the speed you are driving since the extension in the springs lower your car\'s height temporarily',
                      _controller),
                ],
              ),
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

Widget _tipCard(
    String imageLocation, String message, PageController controller) {
  return Column(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {
              controller.previousPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut);
            },
            icon: Icon(
              Icons.arrow_back_ios,
            ),
          ),
          Container(
            margin: EdgeInsets.all(3),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
            child: Opacity(
                opacity: 0.8, child: Image.asset('images/$imageLocation')),
          ),
          IconButton(
            onPressed: () {
              controller.nextPage(
                  duration: Duration(milliseconds: 300), curve: Curves.easeIn);
            },
            icon: Icon(
              Icons.arrow_forward_ios,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 15,
      ),
      Padding(
        padding: EdgeInsets.all(15),
        child: Text(
          message,
          textAlign: TextAlign.justify,
          style: TextStyle(
              fontSize: 17,
              color: Colors.black,
              letterSpacing: 1.1,
              fontWeight: FontWeight.bold,
              fontFamily: 'Gothic'),
        ),
      )
    ],
  );
}
