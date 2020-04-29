import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFFDB3620);
const Color primaryColorOpacity = Color(0xFFFF7F50);
const Color iconColor = Color(0xFFE4E0E8);
const Color primaryTextColor = Color(0xFF1A1316);
const Color secondaryTextColor = Color(0xFF8391A0);
const Color buttonColor = Color(0xFF8391A0);
final Color mainGreenColor = Colors.green[900];
const Color blueColor = Colors.lightBlueAccent;

List<Map> categories = [
  {'name': 'Cats', 'iconPath': 'assets/images/cats.png'},
  {'name': 'Dogs', 'iconPath': 'assets/images/dog.png'},
  {'name': 'Fish', 'iconPath': 'assets/images/fish.png'},
  {'name': 'Parrots', 'iconPath': 'assets/images/parrots.png'},
  {'name': 'Rips', 'iconPath': 'assets/images/rip.png'},
];

List<Map> listing = [
  {'name': 'Adoption', 'icon': 'assets/images/cats.png'},
  {'name': 'Donation', 'icon': 'assets/images/dog.png'},
  {'name': 'Add post', 'icon': 'assets/images/fish.png'},
  {'name': 'Favorites', 'icon': 'assets/images/parrots.png'},
  {'name': 'MEssages', 'icon': 'assets/images/rip.png'},
  {'name': 'Profile', 'icon': 'assets/images/rip.png'},
];

List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey[300], blurRadius: 30, offset: Offset(0, 10))
];
