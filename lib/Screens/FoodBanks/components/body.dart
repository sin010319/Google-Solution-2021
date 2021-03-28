import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/FoodBanks/components/background.dart';
import 'package:flutter_auth/components/nav_drawer.dart';

class  Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text('Food Banks'),
      ),
      body: Container(
        child: Column(
          children: [
            Image.asset('assets/images/location-map.png'),
            SizedBox(width: 100, height: 50),
            Container(
              width: double.infinity,
              color: Colors.orange,
              height: 20,
              child: Text(
                "Nearby",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_sharp,
                  color: Colors.red,
                ),
                Text("128 Cafe")

              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_sharp,
                  color: Colors.red,
                ),
                Text("Rock Cafe")

              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_sharp,
                  color: Colors.red,
                ),
                Text("Sunway Pyramid")

              ],
            ),

            SizedBox(width: 100, height: 50),
            Container(
              width: double.infinity,
              color: Colors.orange,
              height: 20,
              child:
                  Container(
                      child: Text(
                        "Favourites saved locations",
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      ),

                  ),

            ),
            Row(
              children: [
                Icon(
                  Icons.location_on_sharp,
                  color: Colors.red,
                ),
                Text("Bandar Sunway, Subang Jaya")
              ],
            )
            
          ],

        )
      )
    );
  }
}
