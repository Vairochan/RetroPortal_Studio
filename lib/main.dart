import 'package:flutter/material.dart';
import 'package:retroportal_studio/landing/landing_page.dart';
import 'package:retroportal_studio/navbar/navbar.dart';

void main(){
  runApp(MaterialApp(
    title: "Retro Portal Studio",
    home: Home(),
    theme: ThemeData(
      primarySwatch: Colors.blue,
      fontFamily: "Zcool",
    ),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.pink,
              Colors.deepPurple
            ]
          )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              NavBar(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                child: LandingPage(),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
