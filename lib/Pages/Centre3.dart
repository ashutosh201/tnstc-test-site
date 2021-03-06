import 'package:flutter/material.dart';
import 'package:tnstc_test_site/Footer/Footer.dart';
import 'package:tnstc_test_site/Navbar/Navbar.dart';
import 'package:tnstc_test_site/Homepagebody/Sidemenu.dart';

class Centre3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopCentre3();
        } else {
          return MobileCentre3();
        }
      },
    );
  }
}

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

List<String> centre3Para = [
  "In order to cater to the needs of people in the western parts of Tamilnadu, permission was sought from the Government for the establishment of a Regional Science Centre at Coimbatore.",
  "There are four galleries in this centre viz., How Things Work, Textile Gallery and Fun Science Gallery along with 3D Theatre and a Science Park.",
  "The centre was inaugurated on 6th May 2013 by the then Hon'ble Chief Minister of Tamilnadu.",
  "This centre organizes outreach activities such as Meet the Scientist, Meet your Medical Expert, Teacher Training, Students Motivation Programme etc."
];

class DesktopCentre3 extends StatefulWidget {
  @override
  _DesktopCentre3State createState() => _DesktopCentre3State();
}

class _DesktopCentre3State extends State<DesktopCentre3> {
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
                          tag: 'centre3image',
                          child: Image.asset(
                            'assets/windowimage3.jpg',
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
                                    "Regional Science Centre - Coimbatore",
                                    style: TextStyle(
                                      color: Colors.lightBlue[900],
                                      fontSize: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    centre3Para[0],
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    centre3Para[1],
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    centre3Para[2],
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    centre3Para[3],
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
                                      'assets/windowimage3.jpg',
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
          DesktopNavbar(),
        ],
      ),
    );
  }
}

class MobileCentre3 extends StatefulWidget {
  @override
  _MobileCentre3State createState() => _MobileCentre3State();
}

class _MobileCentre3State extends State<MobileCentre3> {
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
              child: Hero(
                tag: "centre3imagemobile",
                child: Image.asset(
                  'assets/windowimage3.jpg',
                  fit: BoxFit.cover,
                ),
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
                        "Regional Science Centre - Coimbatore",
                        style: TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        centre3Para[0],
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        centre3Para[1],
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        centre3Para[2],
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        centre3Para[3],
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
                          'assets/windowimage3.jpg',
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
