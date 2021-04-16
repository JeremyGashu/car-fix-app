import 'dart:math';

import 'package:car_fix_project/utils/Mechanic.dart';
import 'package:flutter/material.dart';

class NearbyMechanics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
//                SizedBox(
//                  height: 20,
//                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: mechanics.length,
                      itemBuilder: (context, index) {
                        return MechanicCard(mechanic: mechanics[index]);
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/mechanic-detail',
                            arguments: {
                              'candidate':
                                  mechanics[Random().nextInt(mechanics.length)]
                            });
                      },
                      child: Padding(
                        padding: EdgeInsets.all(15),
                        child: Text(
                          'Let Us Choose For You!',
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
                alignment: Alignment.topRight,
                child: Container(
                  child: IconButton(
                      splashColor: Colors.pink.withOpacity(0.05),
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: Colors.pink,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                ))
          ],
        ),
      ),
    );
  }
}

class MechanicCard extends StatelessWidget {
  final Mechanic mechanic;
  MechanicCard({this.mechanic});
  @override
  Widget build(BuildContext context) {
    return Card(
        child: InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/mechanic-detail',
            arguments: {'candidate': this.mechanic});
      },
      splashColor: Colors.pink.withOpacity(0.1),
      child: Padding(
        padding: EdgeInsets.all(15),
        child: Row(
          children: <Widget>[
            Container(
                child: Hero(
              tag: '${mechanic.name}',
              child: CircleAvatar(
                backgroundImage: AssetImage('images/mechanic.jpg'),
                maxRadius: 35,
              ),
            )),
            SizedBox(
              width: 35,
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '${mechanic.name}',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Gothic'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                            children: generateRatings(
                                mechanic.rating, 15, Colors.red)),
                        SizedBox(
                          width: 30,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.directions,
                              color: Colors.blue,
                            ),
                            Text('${mechanic.distance} KM Away',
                                style: TextStyle(
                                    fontFamily: 'Gothic',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    mechanic.isFreelancer
                        ? Row(
                            children: <Widget>[
                              Text('Freelance Mechanic',
                                  style: TextStyle(
                                      fontFamily: 'Gothic',
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold))
                            ],
                          )
                        : Row(
                            children: <Widget>[
                              Text('${mechanic.garageName}',
                                  style: TextStyle(
                                      fontFamily: 'Gothic',
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700))
                            ],
                          ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

List<Widget> generateRatings(int i, double size, Color color) {
  List<Widget> stars = [];
  for (int j = 0; j < i; j++) {
    stars.add(Icon(
      Icons.star,
      color: color,
      size: size,
    ));
  }
  return stars;
}
