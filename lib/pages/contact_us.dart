import 'package:flutter/material.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text('Contact Us!',
                      style: TextStyle(
                          fontFamily: 'Gothic',
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  Opacity(opacity: 0.7, child: Image.asset('images/gears.png')),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Opacity(
                        opacity: 0.7,
                        child: Icon(
                          Icons.email,
                          size: 50,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Opacity(
                        opacity: 0.7,
                        child: Icon(
                          Icons.phone,
                          size: 50,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(
                        width: 17,
                      ),
                      Opacity(
                        opacity: 0.7,
                        child: Icon(
                          Icons.add_circle_outline,
                          size: 50,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      _companyInformation('Email', 'companyemail@gmail.com'),
                      _companyInformation('Phone No', '+251912121212'),
                      _companyInformation('Telegra,', '@companytelegram'),
                    ],
                  ),
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

Widget _companyInformation(String propName, String prop) {
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
                    fontWeight: FontWeight.w500)),
            Text('$prop',
                style: TextStyle(
                    fontFamily: 'Gothic',
                    fontSize: 16,
                    fontWeight: FontWeight.w500)),
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
