import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Home/components/background.dart';
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
        title: Text('Home'),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Center(

              child: CircleAvatar(
                backgroundImage: NetworkImage("https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5c76b7d331358e35dd2773a9%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D0%26cropX2%3D4401%26cropY1%3D0%26cropY2%3D4401"),
                radius: 50,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text("Hi, Mark!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 36
            ),
          ),
    SizedBox(height: 10,),
    Text("What do you want to do today?",
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 24
    ),),
          SizedBox(height: 75,),
          Column(
            children: [
              Container(
                child: Text("Latest COVID-19 news",
                  style:
                  TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold
                  ),
                ),

              ),
              Image.asset('assets/images/news.png'),
            ],
          )
        ],
      ),
    );
  }
}
