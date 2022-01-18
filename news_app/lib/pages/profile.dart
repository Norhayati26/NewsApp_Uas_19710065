import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key, this.title}) : super(key: key);

  final String title;
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: new Color(0xFF1A237E),
            gradient: LinearGradient(
              colors: [new Color(0xff64b5f6), new Color(0xFF1A237E)],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
            ),
          ),
          padding: EdgeInsets.fromLTRB(15, 35, 15, 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'DATA DIRI',
                style: TextStyle(
                    fontSize: 30.0,
                    letterSpacing: 2.5,
                    height: 2.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 70.0,
                height: 40.0,
              ),
              Text(
                'Nama Developer',
                style: TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    height: 2.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  title: Text(
                    'NORHAYATI',
                    style: TextStyle(
                        color: Colors.blue.shade800,
                        fontFamily: 'Cute Letters Italic',
                        fontSize: 20.0),
                  ),
                ),
              ),
              Text(
                'NPM',
                style: TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    height: 2.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  title: Text(
                    '19710065',
                    style: TextStyle(
                        color: Colors.blue.shade800,
                        fontFamily: 'Cute Letters Italic',
                        fontSize: 20.0),
                  ),
                ),
              ),
              Text(
                'Kelas',
                style: TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    height: 2.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  title: Text(
                    '5A SI Banjarmasin',
                    style: TextStyle(
                        color: Colors.blue.shade800,
                        fontFamily: 'Cute Letters Italic',
                        fontSize: 20.0),
                  ),
                ),
              ),
              Text(
                'Kontak',
                style: TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    height: 2.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  title: Text(
                    '+62 0853 4633 3506',
                    style: TextStyle(
                      color: Colors.blue.shade800,
                      fontFamily: 'Cute Letters Italic',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Text(
                'Alamat',
                style: TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 2.5,
                    height: 2.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  title: Text(
                    'Hulu Sungai Selatan, Kalimantan Selatan',
                    style: TextStyle(
                        color: Colors.blue.shade800,
                        fontFamily: 'Cute Letters Italic',
                        fontSize: 20.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
