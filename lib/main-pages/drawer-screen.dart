import 'package:animalsparrotapp/styleguide/configuration.dart';
import 'package:animalsparrotapp/styleguide/text_style.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: mainGreenColor.withOpacity(0.7),
      ),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Row(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/images/ara.png'),
                        ),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Alex Cherkashcenko',
                              style: namedStyle,
                            ),
                            Text(
                              'Alex Nataliia',
                              style: subNamedStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.receipt, color: iconColor)
              ],
            ),
          ),
          Container(
            height: 150,
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: listing.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        listing[index]['icon'],
                        color: Colors.white,
                        width: 50,
                        height: 50,
                      ),
                      Text(listing[index]['name'], style: listStyle),
                    ],
                  ),
                );
              }),
          Container(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 10, right: 10),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.settings,
                  color: Colors.grey,
                  size: 20,
                ),
                Text(
                  '  Setting   ',
                  style: awTextStyle,
                ),
                Text(
                  '|   ',
                  style: awTextStyle,
                ),
                Icon(
                  Icons.exit_to_app,
                  size: 20,
                  color: Colors.grey,
                ),
                Text(
                  '  Logout  ',
                  style: awTextStyle,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
