import 'package:flutter/material.dart';
import 'package:tnstc_test_site/Homepagebody/Homepagebody1.dart';
import 'package:tnstc_test_site/Homepagebody/Sidemenu.dart';
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
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopHomepage();
        } else {
          return MobileHomepage();
        }
      },
    );
  }
}

class DesktopHomepage extends StatefulWidget {
  @override
  _DesktopHomepageState createState() => _DesktopHomepageState();
}

class _DesktopHomepageState extends State<DesktopHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                //Navbar(),
                DesktopHomepagebody1(),
                SizedBox(
                  height: 200,
                ),
                DesktopHomepagebody3(),
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
                DesktopHomepagebody2(),
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
              child: DesktopNavbar(),
            ),
          ),
        ],
      ),
    );
  }
}

class MobileHomepage extends StatefulWidget {
  @override
  _MobileHomepageState createState() => _MobileHomepageState();
}

class _MobileHomepageState extends State<MobileHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
        child: AppBar(
          elevation: 10,
          backgroundColor: Colors.blueGrey,
          title: Column(
            children: <Widget>[
              SizedBox(
                height: 4,
              ),
              Text(
                "TamilNadu Science &",
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
              Text(
                "Technology Centre",
                style: TextStyle(
                  fontSize: 23,
                ),
              ),
            ],
          ),
          centerTitle: true,
        ),
      ),
      drawer: Theme(
        data: ThemeData.dark(),
        child: Drawer(
          child: Sidemenu(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //Navbar(),
            MobileHomepagebody1(),
            SizedBox(
              height: 200,
            ),
            MobileHomepagebody3(),
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
            MobileHomepagebody2(),
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
    );
  }
}
