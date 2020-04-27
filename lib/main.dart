import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      appBar: AppBar(
        title: Text(
          'COVID 19 EXPLORER',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 2.5,
          ),
        ),
      ),
      body: Covid19(),
    );
  }
}

class Covid19 extends StatefulWidget {
  @override
  _Covid19State createState() => _Covid19State();
}

class _Covid19State extends State<Covid19> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            child: Image(
              image: AssetImage('images/covid4.png'),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text(
            'Find What You',
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Need To Know About COVID 19',
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              color: Colors.white,
              letterSpacing: 2.5,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Corona Virus bụ oria mberede dakwarasiri mba uwa. Ka o di ugbua mmadu nari iri itolu ebutala oria.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              color: Colors.teal.shade100,
              letterSpacing: 2.5,
              fontSize: 13.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  width: 110.0,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Symptoms(),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.blue[700],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Symptoms extends StatefulWidget {
  @override
  _SymptomsState createState() => _SymptomsState();
}

class _SymptomsState extends State<Symptoms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        backgroundColor: Colors.blue[50],
        title: Text(
          "Symptoms",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 50.0,
              color: Colors.blue[50],
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40.0, 0.0, 30.0, 0.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.apps,
                      color: Colors.black,
                    ),
                    SizedBox(
                      width: 200.0,
                    ),
                    Icon(
                      Icons.notifications_active,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                child: ListTile(
                  leading: Icon(
                    Icons.search,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'Type Something',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontSize: 17.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 0.0, 0, 0),
                child: Text(
                  'Symptoms',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Source Sans Pro',
                    letterSpacing: 2.5,
                  ),
                ),
              ),
            ),
            Container(
              height: 120.0,
              child: Center(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Image(
                        image: AssetImage('images/cough.jpg'),
                      ),
                    ),
                    SizedBox(
                      width: 50.0,
                    ),
                    Expanded(
                      child: Image(
                        image: AssetImage('images/cough.jpg'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 1.0, horizontal: 10.0),
              height: 30.0,
              color: Colors.grey[150],
              child: Row(
                children: <Widget>[
                  Text(
                    'High Fever',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Source Sans Pro',
                      letterSpacing: 2.5,
                    ),
                  ),
                  SizedBox(
                    width: 120.0,
                  ),
                  Text(
                    'Dry Cough',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Source Sans Pro',
                      letterSpacing: 2.5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Center(
              child: Card(
                color: Colors.cyan[50],
                child:
                    Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.album),
                    title: Text(
                      'All You Need To Know',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Source Sans Pro',
                        letterSpacing: 2.5,
                      ),
                    ),
                    subtitle: Text('About COVID 19'),
                  ),
                  ButtonBar(
                    // make buttons use the appropriate styles for cards

                    children: <Widget>[
                      FlatButton(
                        child: const Text('KNOW MORE'),
                        onPressed: () {/* ... */},
                      ),
                    ],
                  ),
                ]),
              ),
            ),
            Container(
              child: Text(
                'Requirements',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Source Sans Pro',
                  letterSpacing: 2.5,
                ),
              ),
            ),
            Container(
              height: 40.0,
              margin: EdgeInsets.symmetric(vertical: 1.0, horizontal: 50.0),
              child: Center(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.local_hotel,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 50.0,
                    ),
                    Icon(
                      Icons.local_hotel,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 50.0,
                    ),
                    Icon(
                      Icons.person,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 50.0,
                    ),
                    Icon(
                      Icons.local_hospital,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
