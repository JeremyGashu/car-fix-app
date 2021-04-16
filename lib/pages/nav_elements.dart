import 'package:flutter/material.dart';

class NavElements extends StatelessWidget {
  final Icon icon;
  final String text;
  final Function onTap;
  NavElements({this.icon, this.text, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 3),
      child: InkWell(
        splashColor: Colors.redAccent.withOpacity(0.3),
        onTap: this.onTap,
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 13, right: 20),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  this.icon,
                  Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        this.text,
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: 18,
                            fontFamily: 'Gothic'),
                      )),
                ],
              ),
              Divider(
                color: Colors.grey,
                indent: 10,
                thickness: .5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
