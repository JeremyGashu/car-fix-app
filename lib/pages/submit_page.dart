import 'package:car_fix_project/pages/drawer.dart';
import 'package:car_fix_project/utils/Mechanic.dart';
import 'package:flutter/material.dart';

class SubmitOrder extends StatefulWidget {
  @override
  _SubmitOrderState createState() => _SubmitOrderState();
}

class _SubmitOrderState extends State<SubmitOrder> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int minute = 0;
  int second = 0;

  Future<bool> _simulateSMSStatus() async {
    var delayed = await Future.delayed(Duration(seconds: 3), () => true);
    return delayed;
  }

  @override
  Widget build(BuildContext context) {
    Map dataSent = ModalRoute.of(context).settings.arguments;
    Mechanic mechanic = dataSent['candidate'] as Mechanic;
    num timeTaken = mechanic.distance * 3;
    minute = timeTaken.floor();
    second = (timeTaken % 1 * 60).floor();

    return Scaffold(
      key: _scaffoldKey,
      drawer: AppDrawer(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    splashColor: Colors.pink.withOpacity(0.05),
                    icon: Icon(Icons.menu),
                    iconSize: 35,
                    color: Colors.pinkAccent,
                    onPressed: () {
                      _scaffoldKey.currentState.openDrawer();
                    })),
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FutureBuilder(
                    future: _simulateSMSStatus(),
                    builder: (context, snapshot) => snapshot.hasData
                        ? Center(
                            child: Column(
                              children: <Widget>[
                                Opacity(
                                    opacity: 0.8,
                                    child: Image.asset('images/gears.png')),
                                SizedBox(
                                  height: 20,
                                ),
                                Text('SMS SENT!!! See You in...',
                                    style: TextStyle(
                                        fontFamily: 'Gothic',
                                        fontSize: 20,
                                        letterSpacing: 1.2,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('$minute MIN $second SEC',
                                    style: TextStyle(
                                        fontFamily: 'Gothic',
                                        fontSize: 25,
                                        letterSpacing: 1.2,
                                        color: Colors.pinkAccent,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text('Thanks For Using!',
                                    style: TextStyle(
                                        fontFamily: 'Gothic',
                                        fontSize: 16,
                                        letterSpacing: 1.2,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushReplacementNamed(
                                        context, '/tips');
                                  },
                                  splashColor:
                                      Colors.pinkAccent.withOpacity(0.3),
                                  child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                        'You can see useful tips until then',
                                        style: TextStyle(
                                            fontFamily: 'Gothic',
                                            fontSize: 13,
                                            color: Colors.pinkAccent,
                                            decoration: TextDecoration.combine(
                                                [TextDecoration.underline]),
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          )
                        : Center(
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  Icons.message,
                                  size: 140,
                                  color: Colors.blue,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 100,
                                  height: 100,
                                  child: CircularProgressIndicator(),
                                  //
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text('Sending SMS!',
                                    style: TextStyle(
                                        fontFamily: 'Gothic',
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
