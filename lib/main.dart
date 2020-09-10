import 'package:flutter/material.dart';
import 'package:tnstc_test_site/Homepagebody/Homepagebody1.dart';
import 'Homepagebody/Homepagebody2.dart';
import 'Homepagebody/Homepagebody3.dart';
import 'Navbar/Navbar.dart';
import 'Data/Data.dart';

void main() {
  runApp(MaterialApp(
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
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                //Navbar(),
                Homepagebody1(),
                SizedBox(
                  height: 200,
                ),
                Homepagebody3(),
                SizedBox(
                  height: 200,
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
                SizedBox(
                  height: 200,
                ),
                Divider(
                  height: 50,
                  thickness: 2,
                  indent: MediaQuery.of(context).size.width * 0.2,
                  endIndent: MediaQuery.of(context).size.width * 0.2,
                  color: Colors.grey,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        child: Image.asset(
                          'assets/homepagebackground4.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 270,
                            color: Colors.lightBlue[900].withOpacity(0.7),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 30,
                            color: Colors.teal.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              margin: EdgeInsets.zero,
              elevation: 10,
              color: Colors.blueGrey[600].withOpacity(0.8),
              child: Navbar(),
            ),
          ),
        ],
      ),
    );
  }
}
