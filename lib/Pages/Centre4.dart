import 'package:flutter/material.dart';
import 'package:tnstc_test_site/Footer/Footer.dart';
import 'package:tnstc_test_site/Navbar/Navbar.dart';
import 'package:tnstc_test_site/Homepagebody/Sidemenu.dart';

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

List<String> centre4Para = [
  "The District Science Centre, Vellore was established by the government of Tamilnadu and the thrown open to public on 25.01.2011. the District Science Centre has been established with four Halls of Science viz., Physical Science, Hall of Discovery, Environment and Industry.",
  "The Physical Science gallery has been established at the ground floor. Through participation and interaction, vistors can learn the fundamental basic science principle vividly. The centrally located exhibition called Energy Ball enchants the visitors through the movements of balls through paths explain the concept of conversion of energy.",
  "The Hall of Discovery at the first floor has been designed to understand and learn science with joy and fun.",
  "In the second floor, the Environment Gallery has been established with 18 exhibits and the main highlights of the gallery are the life supporting zones of the world.",
  "The Industry Gallery has been established with 20 exhibits in the Third floor and the important aspects of the gallery are leather turning, during, models of machines involved in Leather Technology. In order to provide information on scientific theme in a mindboggling way, 3D immersive Projection movies will be useful.",
  "The Basement floor comprises officer, Library and Seminar Hall with a seating capacity of 150 numbers and Conference Hall."
];

class DesktopCentre4 extends StatefulWidget {
  @override
  _DesktopCentre4State createState() => _DesktopCentre4State();
}

class _DesktopCentre4State extends State<DesktopCentre4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height,
                color: Colors.teal.withOpacity(0.9),
                child: DesktopSidemenu(),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.width * 0.4,
                        padding: EdgeInsets.symmetric(vertical: 60),
                        child: Hero(
                          tag: 'centre4image',
                          child: Image.asset(
                            'assets/windowimage4.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.1),
                          child: Card(
                            elevation: 20,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.05),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Text(
                                    "District Science Centre - Vellore",
                                    style: TextStyle(
                                      color: Colors.lightBlue[900],
                                      fontSize: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    centre4Para[0],
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    centre4Para[1],
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    centre4Para[2],
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    centre4Para[3],
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    centre4Para[4],
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    centre4Para[5],
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    height: MediaQuery.of(context).size.width *
                                        0.3 *
                                        0.65,
                                    child: Image.asset(
                                      'assets/windowimage4.jpg',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Divider(
                                    thickness: 2,
                                    height: 100,
                                    color: Colors.grey,
                                    indent: 40,
                                    endIndent: 40,
                                  ),
                                  Text(
                                    "Timings",
                                    style: TextStyle(
                                      color: Colors.lightBlue[900],
                                      fontSize: 25,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Science Exibition",
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Halls of Science & Technology - 10.00 a.m to 05.45 p.m",
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ],
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

class MobileCentre4 extends StatefulWidget {
  @override
  _MobileCentre4State createState() => _MobileCentre4State();
}

class _MobileCentre4State extends State<MobileCentre4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      drawer: Theme(
        data: ThemeData.dark(),
        child: Drawer(
          child: Sidemenu(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        child: Icon(Icons.format_list_bulleted),
        onPressed: () {
          _scaffoldState.currentState.openDrawer();
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 20,
              color: Colors.teal,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * 0.6,
              child: Image.asset(
                'assets/windowimage4.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
              child: Card(
                elevation: 20,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "District Science Centre - Vellore",
                        style: TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        centre4Para[0],
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        centre4Para[1],
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        centre4Para[2],
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        centre4Para[3],
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        centre4Para[4],
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        centre4Para[5],
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.width * 0.4,
                        child: Image.asset(
                          'assets/windowimage4.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Divider(
                        thickness: 2,
                        height: 100,
                        color: Colors.grey,
                        indent: 40,
                        endIndent: 40,
                      ),
                      Text(
                        "Timings",
                        style: TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: 25,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Science Exibition",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Halls of Science & Technology - 10.00 a.m to 05.45 p.m",
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
