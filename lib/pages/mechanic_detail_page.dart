import 'package:car_fix_project/utils/Mechanic.dart';
import 'package:flutter/material.dart';

import 'nearby_mechanics.dart';

class MechanicDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map dataSent = ModalRoute.of(context).settings.arguments;
    Mechanic mechanic = dataSent['candidate'] as Mechanic;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Hero(
                      tag: '${mechanic.name}',
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/mechanic.jpg'),
                        maxRadius: 65,
                      ),
                    ),
                  ),
                  Text(
                    '${mechanic.name}',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Gothic'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.directions,
                        color: Colors.blue,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Just ${mechanic.distance} KM Away',
                          style: TextStyle(
                              fontFamily: 'Gothic',
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                          generateRatings(mechanic.rating, 20, Colors.red)),
                  SizedBox(
                    height: 5,
                  ),
                  mechanic.isFreelancer
                      ? Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('Freelance Mechanic',
                                style: TextStyle(
                                    fontFamily: 'Gothic',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))
                          ],
                        )
                      : Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('${mechanic.garageName}',
                                style: TextStyle(
                                    fontFamily: 'Gothic',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: Divider(
                      color: Colors.black12,
                      thickness: 1,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      _mechanicInformation('Email', '${mechanic.email}'),
                      _mechanicInformation('Phone No', '${mechanic.phoneNo}'),
                      _mechanicInformation(
                          'Telegram;', '${mechanic.telegramUsername}'),
                      _mechanicInformation('Address', '${mechanic.address}'),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(7),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.of(context).popAndPushNamed('/submit-order',
                              arguments: {'candidate': mechanic});
                        },
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'Confirm',
                            style: TextStyle(
                                fontFamily: 'Gothic',
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        color: Colors.pink,
                        minWidth: double.infinity,
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      splashColor: Colors.pink.withOpacity(0.05),
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }))
            ],
          ),
        ),
      ),
    );
  }
}

Widget _mechanicInformation(String propName, String prop) {
  return Padding(
    padding: EdgeInsets.fromLTRB(15, 5, 15, 10),
    child: Column(
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text('$propName: ',
                style: TextStyle(
                    fontFamily: 'Gothic',
                    fontSize: 16,
                    fontWeight: FontWeight.w700)),
            Text('$prop',
                style: TextStyle(
                    fontFamily: 'Gothic',
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Divider(
          color: Colors.black12,
          thickness: 1,
        ),
      ],
    ),
  );
}
