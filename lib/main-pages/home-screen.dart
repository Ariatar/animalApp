import 'package:animalsparrotapp/Widgets/animals-card.dart';
import 'package:animalsparrotapp/styleguide/configuration.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;
  bool isDrawerOpnen = false;

  void _pressIconToAnimate() {
    this.xOffset = 250;
    this.yOffset = 150;
    this.scaleFactor = 0.7;
    this.isDrawerOpnen = true;
  }

  void _pressIconToDeanimate() {
    this.xOffset = 0;
    this.yOffset = 0;
    this.scaleFactor = 1;
    this.isDrawerOpnen = false;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29),
        color: Colors.grey[200],
      ),
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor),
      duration: Duration(milliseconds: 250),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                isDrawerOpnen
                    ? IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () => setState(
                          () => _pressIconToDeanimate(),
                        ),
                      )
                    : IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          setState(() => _pressIconToAnimate());
                        },
                      ),
                Column(
                  children: <Widget>[
                    Text(
                      'Location',
                      style: TextStyle(color: Colors.blue[600]),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.location_on),
                        Text('Sverige, Göteborg'),
                      ],
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/ara.png'),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(29),
            ),
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.search),
                Text(
                  'Animal what you want',
                  style: TextStyle(color: Colors.red),
                ),
                Icon(Icons.perm_data_setting),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) => Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.all(15),
                      child: Image.asset(
                        categories[index]['iconPath'],
                        height: 50,
                        width: 50,
                      ),
                    ),
                    Text(categories[index]['name']),
                  ],
                ),
              ),
            ),
          ),
          AnimalsCard(
            image: 'assets/images/parrotO.png',
            name: 'Necklace parrot',
            where: 'in South Asia, Africa ',
            life: 'Life: ',
            year: ' 20-30 years ',
            distance: 'Distance: ',
            km: ' 1548 km ',
          ),
          AnimalsCard(
            image: 'assets/images/budgerigar.png',
            name: 'Budgerigar',
            where: 'in Australia ',
            life: 'Life: ',
            year: ' 5-15 years ',
            distance: 'Distance: ',
            km: ' 1548 km ',
          ),
          AnimalsCard(
            image: 'assets/images/ara.png',
            name: 'Ara',
            where: 'in Australia ',
            life: 'Life: ',
            year: ' 5-15 years ',
            distance: 'Distance: ',
            km: ' 1548 km ',
          ),
        ],
      ),
    );
  }
}
