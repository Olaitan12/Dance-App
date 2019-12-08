import 'dart:async';

import 'package:flutter/material.dart';

void main ()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));

  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/splash.jpeg"),
            fit: BoxFit.cover
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Colors.white,
              Colors.black,
            ],
            stops: [
              0.0,
              1.0
            ],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            tileMode: TileMode.repeated)),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/malaki.png',
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 0.5,
                  ),
                  Text('DANCE STARS',
                  style: TextStyle(color: Colors.white, 
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50.0
                  ),
                  // Icon(Icons.beenhere,
                  // color: Colors.white,
                  // size: 80,),
                  Text("When people have not learned to interpret the past, to read the present; and to imagine and empower the future, they are living a life without a punchline, clueless about the story they are embarked upon. Not on the shortlist",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(
                    height: 100.0,
                  ),
                  FlatButton.icon(
                    icon: Icon(Icons.send), 
                    label: Text("Let's Dance",), 
                    onPressed: () {},
                    color: Colors.white,
                    ),
                  SizedBox(
                    height: 50.0,
                  ),
                ],
              ),
            ),
      ),
    );
  }
}

class LetsDance extends StatefulWidget {
  @override
  _LetsDanceState createState() => _LetsDanceState();
}

class _LetsDanceState extends State<LetsDance> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}