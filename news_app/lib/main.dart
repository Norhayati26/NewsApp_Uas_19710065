import 'package:flutter/material.dart';
import 'package:news_app/pages/health.dart';
import 'package:news_app/pages/profile.dart';
import 'package:news_app/pages/sport.dart';
import 'package:news_app/splashscreen.dart';
import 'package:news_app/services/api_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiService client = ApiService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade800,
          title: Text("Headline", style: TextStyle(color: Colors.white)),
          leading: Icon(Icons.menu, color: Colors.white),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert, color: Colors.white, size: 100.0),
            ),
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(25.0),
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              Card(
                margin: const EdgeInsets.all(4.0),
                child: InkWell(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.health_and_safety,
                        color: Colors.blue,
                        size: 120.0,
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OtomotifPage()));
                  },
                ),
              ),
              Card(
                margin: const EdgeInsets.all(4.0),
                child: InkWell(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.sports_soccer,
                        color: Colors.blue,
                        size: 120.0,
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SportPage()));
                  },
                ),
              ),
              Card(
                margin: const EdgeInsets.all(4.0),
                child: InkWell(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        color: Colors.blue,
                        size: 120.0,
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilePage()));
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
