import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
            image: AssetImage("assets/chaperone.jpg"),
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
                    padding: const EdgeInsets.all(9.0),
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Let's", style: TextStyle(
              fontSize: 20, 
              fontWeight: FontWeight.bold, 
              color: Colors.white,
              ),
            ),
            Text("Dance", style: TextStyle(
              fontSize: 20, 
              fontWeight: FontWeight.bold, 
              color: Colors.white,
              ),
            ),
          ],
        ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/face.jpg'),
                  fit: BoxFit.cover,
                )
              ),
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              height: 300,
              child: Swiper(
                itemCount: 5,
                autoplay: false,
                viewportFraction: 0.7,
                itemBuilder: (BuildContext context,int index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset('assets/hehehe.jpg', 
                                fit: BoxFit.cover))),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              color: Colors.black12,
                              child: Text(
                                "Let's dance away sorrows", 
                                style: TextStyle(
                                  color: Colors.white),
                              textAlign: TextAlign.center,),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
