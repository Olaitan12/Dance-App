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
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, right: 12.0, left: 12.0, bottom: 13.0),
                    child: FlatButton.icon(
                      icon: Icon(Icons.send), 
                      label: Text("Let's Dance",), 
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LetsDance()),
                        );
                      },
                      color: Colors.white,
                      ),
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
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Colors.black,
              Colors.white
            ], stops: [
              0.0,
              1.0
            ],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            tileMode: TileMode.mirror
          ),
        ),
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Let's Move In Styles",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                ),),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: FlatButton.icon(
                    icon: Icon(Icons.more_vert),
                    label: Text("Ayiii"),
                    onPressed: () {},
                  ),
                ),
                FlatButton.icon(
                  icon: Icon(Icons.info),
                  label: Text("Today"),
                  onPressed: (){},
                  color: Colors.transparent,
                  colorBrightness: Brightness.light,
                  disabledColor: Colors.black,
                  highlightColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}
