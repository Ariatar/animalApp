import 'package:animalsparrotapp/styleguide/text_style.dart';
import 'package:flutter/material.dart';

class AnimalsCard extends StatelessWidget {
  final String image;
  final String name;
  final String where;
  final String life;
  final String year;
  final String distance;
  final String km;

  const AnimalsCard({
    this.distance,
    Key key,
    this.image,
    this.name,
    this.where,
    this.life,
    this.year,
    this.km,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 40),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )),
                ),
                Align(
                  child: Image.asset(
                    image,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 60, bottom: 60, right: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              name,
                              style: nameAnimalsTitle,
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Icon(Icons.brightness_4),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          where,
                          style: nameAnimalsSubTitle,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              life,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              year,
                              style: animalsYears,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(Icons.location_on),
                            SizedBox(
                              width: 5,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  distance,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  km,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
