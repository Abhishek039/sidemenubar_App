import 'package:flutter/material.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('SideBar menu - FlutterCorner'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text('Side Menu Tutorial'),
      ),
    );
  }
}



class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            child: Center(
              child: Text(
                'Welcome',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/images/a.jpg'),
                fit: BoxFit.cover
              ),
              color: Colors.blue,
            ),
          ),
          ListTile(
            
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () => {backToMainPage(context)},
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Cart'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {Navigator.of(context).pop()},
          ),
        ],
      ),
    );
  }
}

void backToMainPage(context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SubPage2()));
  }

class SubPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('Sub Page2'),
        backgroundColor: Colors.greenAccent
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Click button to back to Main Page'),
            RaisedButton(
              textColor: Colors.white,
              color: Colors.redAccent,
              child: Text('Back to Main Page'),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }}