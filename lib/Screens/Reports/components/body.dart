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
        title: Text('Reports'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Text(
              "Daily COVID-19 Cases",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: 5,),
          Image.asset('assets/images/covid1.webp'),
          SizedBox(height: 50,),
          Text("COVID-19 cases for each states",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 10,),
          Image.asset('assets/images/covid2.webp',
            width: 400,
          )
        ],

      ),
    );
  }
}
