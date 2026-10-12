import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Drawer', 
    theme: ThemeData.light(),
     home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Drawer')),
      body: Container(),
      drawer: _bilderDrawer(context),
    );
  }
}

Drawer _bilderDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 61, 2, 2),
                  child: Text('ET', style: TextStyle(color: Colors.white70)),
                ),
                Text(
                  'Ethio comp sec',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('ethio@gmail.com', style: TextStyle(color: Colors.black)),
              ],
            ),
          ),
          decoration: BoxDecoration(color: Colors.black26),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('phone'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.notifications),
          title: Text('notification'),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('settings'),
          onTap: () {},
        ),
        Divider(color: Colors.black26),
        ListTile(title: Text('About us'), onTap: () {}),
        ListTile(title: Text('Privacy'), onTap: () {}),
      ],
    ),
  );
}

