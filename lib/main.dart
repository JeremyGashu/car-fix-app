import 'package:car_fix_project/pages/HomePage.dart';
import 'package:car_fix_project/pages/about.dart';
import 'package:car_fix_project/pages/contact_us.dart';
import 'package:car_fix_project/pages/mechanic_detail_page.dart';
import 'package:car_fix_project/pages/nearby_mechanics.dart';
import 'package:car_fix_project/pages/submit_page.dart';
import 'package:car_fix_project/pages/tips.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      initialRoute: '/home',
      debugShowCheckedModeBanner: false,
      routes: {
//    '/': (context) => Loading(), MayBe Splash Screen until the page loads the map
        '/home': (context) => HomeScreen(),
        '/tips': (context) => Tips(),
        '/about': (context) => About(),
        '/contact': (context) => ContactUsPage(),
        '/choose-mechanic': (context) => NearbyMechanics(),
        '/mechanic-detail': (context) => MechanicDetailPage(),
        '/submit-order': (context) => SubmitOrder(),
      },
    ));
