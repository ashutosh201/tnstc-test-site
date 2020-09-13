import 'package:flutter/material.dart';
import 'package:tnstc_test_site/Homepagebody/Homepagebody1.dart';
import 'Homepagebody/Homepagebody2.dart';
import 'Navbar/Navbar.dart';
import 'Footer/Footer.dart';
import 'Data/Data.dart';

void main() {
  runApp(MaterialApp(
    title: "TNSTC OFFICIAL WEBSITE",
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Navbar(),
          Homepagebody1(),
          SizedBox(
            height: 400,
          ),
          /*
          Divider(
            height: 50,
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.2,
            endIndent: MediaQuery.of(context).size.width * 0.2,
            color: Colors.grey,
          ),
          */
          Homepagebody2(),
          Divider(
            height: 0,
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.0,
            endIndent: MediaQuery.of(context).size.width * 0.0,
            color: Colors.grey,
          ),
          Footer(),
        ],
      ),
    );
  }
}
