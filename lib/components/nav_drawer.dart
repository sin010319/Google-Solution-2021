import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/FoodBanks/food_bank.dart';
import 'package:flutter_auth/Screens/Home/home.dart';
import 'package:flutter_auth/Screens/Reports/reports.dart';

import '../Screens/Login/login_screen.dart';
import '../Screens/Signup/signup_screen.dart';
import 'text_field_container.dart';
class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 40, left: 20),
            height: 300,
            color: Colors.orangeAccent,
            child: Row(
              children: [
                Column(
                  children: [
                    Text("Welcome Back!",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Image.asset('assets/images/logo.jpeg',
                      width: 200,
                      height: 200,

                    )
                  ],
                )
              ],
            ),





          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Home();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.report),
            title: Text('Reports'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Reports();
                  },
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.food_bank),
            title: Text('Food Banks'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return FoodBank();
                    },
                  ),
                );
              },
          ),
          SizedBox(height: 300, ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
