import 'package:flutter/material.dart';
import './screen1.dart';

void main() => runApp(MaterialApp(
      title: 'hack3',
      home: MyApp(),
      theme: ThemeData(accentColor: Colors.green),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hack3'),
        centerTitle: true,
        actions: <Widget>[

          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: (){},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0.0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(''),
              accountEmail: Text(''),
              currentAccountPicture: new Container(
                width: 190.0,
                height: 190.0,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  //image: new DecorationImage(
                  //fit: BoxFit.fill, image: NetworkImage(Get().photourl)),
                ),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    tileMode: TileMode.repeated,
                    colors: [Colors.grey, Colors.teal]),
              ), // ),
            ),
          ],
        ),
      ),
      body: Screen1(),
    );
  }
}
