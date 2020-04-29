import 'package:flutter/material.dart';

import 'main-pages/drawer-screen.dart';
import 'main-pages/home-screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyAnimalMainPAge(),
    );
  }
}

class MyAnimalMainPAge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
          children: <Widget>[
            DrawerScreen(),
            HomeScreen(),
          ],
        ),
      ),
    );
  }
}
