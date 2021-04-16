import 'package:car_fix_project/pages/drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  AnimationController _controller;
  Animation<Color> _colorAnimation;
  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    _colorAnimation = ColorTween(begin: Colors.pink, end: Colors.pinkAccent)
        .animate(_controller);
    _controller.forward();
    _controller.addListener(() {
      if (_controller.status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (_controller.status == AnimationStatus.dismissed) {
        _controller.forward();
      }
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white70,

//      appBar: AppBar(
//        title: Text('FixersHub'),
//        centerTitle: true,
//      ),
      drawer: AppDrawer(
        routeName: '/home',
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          margin: EdgeInsets.all(5),
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset(
                'images/map.jpg',
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 0,
                left: 0,
                child: IconButton(
                    icon: Icon(Icons.menu, size: 36, color: Colors.yellow[900]),
                    onPressed: () {
                      _scaffoldKey.currentState.openDrawer();
                    }),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Visit Nearby',
        isExtended: true,
        backgroundColor: _colorAnimation.value,
        onPressed: () {
          Navigator.of(context).pushNamed('/choose-mechanic');
        }, //location of the user and the mechanic will be sent as route data in the next session
        child: Icon(Icons.list),
      ),
    );
  }
}
