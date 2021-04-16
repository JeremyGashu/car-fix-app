import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'nav_elements.dart';

class AppDrawer extends StatelessWidget {
  final String routeName;
  AppDrawer({this.routeName});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.black87,
        child: ListView(
          children: <Widget>[
            DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.zero,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/nav_image.jpg'),
                        fit: BoxFit.cover),
                  ),
                )),
            NavElements(
              icon: Icon(
                Icons.home,
                size: 26,
                color: Colors.redAccent,
              ),
              text: 'Home',
              onTap: () {
                if (this.routeName != '/home') {
                  Navigator.pushNamed(context, '/home');
                }
              },
            ),
            NavElements(
              icon: Icon(
                Icons.help_outline,
                size: 26,
                color: Colors.redAccent,
              ),
              text: 'Tips',
              onTap: () {
                Navigator.pushNamed(context, '/tips');
              },
            ),
            NavElements(
              icon: Icon(
                Icons.more_vert,
                size: 26,
                color: Colors.redAccent,
              ),
              text: 'About',
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
            NavElements(
              icon: Icon(
                Icons.feedback,
                size: 26,
                color: Colors.redAccent,
              ),
              text: 'Contact Us',
              onTap: () {
                Navigator.pushNamed(context, '/contact');
              },
            ),
            NavElements(
              icon: Icon(
                Icons.exit_to_app,
                size: 26,
                color: Colors.redAccent,
              ),
              text: 'Exit',
              onTap: () {
                SystemNavigator.pop();
              },
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Text(
                  '\xA9 ThreeDevs Startups',
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 13,
                      fontFamily: 'Gothic'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
