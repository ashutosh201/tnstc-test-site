import 'package:flutter/material.dart';
import 'package:tnstc_test_site/Footer/Footer.dart';
import 'package:tnstc_test_site/Navbar/Navbar.dart';
import 'package:tnstc_test_site/Homepagebody/Sidemenu.dart';

class Centre2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopCentre2();
        } else {
          return MobileCentre2();
        }
      },
    );
  }
}

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

List<String> centre2Para = [
  "Anna Science Centre, Tiruchirappalli has been rendering excellent and yeomen service to cater to the needs of younger generation and the general public of the region in the cause of education, taking up the objectives of Tamilnadu Science and Technology Centre, eversince it was dedicated to the Nation on June 10, 1999.",
  "The Government of Japan have donated the Planetarium Projector and its accessories worth 50 million Japanese Yen (Rs. 1.5 Crores) under the Cultural Grant-in-aid Scheme.",
  "The Planetarium, which has been a source of information and inspiration in the region, receives students in groups visiting from Pudukkottai, Thanjavur, Perambalur, Dindigul, Karur, Madurai Districts apart from Tiruchirappalli.",
  "At Anna Science Centre - Planetarium, Tiruchirappalli, the Environment Gallery, with the exhibits on the themes Eco System, Bio-geochemical cycles, Biodiversity and Conservation, Pollution and sustainable Energy sources was developed at an estimated cost of Rs. 30.00 lakhs, with the financial support obtained from M/s. Indian Oil Corporation Limited. This educational facility was dedicated to the nation on April 22, 2006."
];

class DesktopCentre2 extends StatefulWidget {
  @override
  _DesktopCentre2State createState() => _DesktopCentre2State();
}

class _DesktopCentre2State extends State<DesktopCentre2> {
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
                          tag: 'centre2image',
                          child: Image.asset(
                            'assets/windowimage2.jpg',
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
                                    "Anna Science Centre -Planetarium, Tiruchirappalli",
                                    style: TextStyle(
                                      color: Colors.lightBlue[900],
                                      fontSize: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    centre2Para[0],
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    centre2Para[1],
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    centre2Para[2],
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    centre2Para[3],
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
                                      'assets/windowimage1.jpg',
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
                                    "Planetarium programme",
                                    style: TextStyle(
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal:
                                            MediaQuery.of(context).size.width *
                                                0.15),
                                    child: Table(
                                      border: TableBorder.symmetric(
                                        inside: BorderSide(
                                          width: 2,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      children: [
                                        TableRow(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 2),
                                              child: Text(" English"),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 2),
                                              child: Text(" Tamil"),
                                            ),
                                          ],
                                        ),
                                        TableRow(
                                          children: [
                                            Text(" 11.45 A.M."),
                                            Text(" 10.30 A.M."),
                                          ],
                                        ),
                                        TableRow(
                                          children: [
                                            Text(" 02.15 P.M."),
                                            Text(" 01.00 P.M."),
                                          ],
                                        ),
                                        TableRow(
                                          children: [
                                            Text(""),
                                            Text(" 03.30 P.M."),
                                          ],
                                        ),
                                        TableRow(
                                          children: [
                                            Text(""),
                                            Text(" 04.45 P.M."),
                                          ],
                                        ),
                                      ],
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

class MobileCentre2 extends StatefulWidget {
  @override
  _MobileCentre2State createState() => _MobileCentre2State();
}

class _MobileCentre2State extends State<MobileCentre2> {
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
                tag: "centre2imagemobile",
                child: Image.asset(
                  'assets/windowimage2.jpg',
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
                        "Anna Science Centre -Planetarium, Tiruchirappalli",
                        style: TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        centre2Para[0],
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        centre2Para[1],
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        centre2Para[2],
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        centre2Para[3],
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
                          'assets/windowimage2.jpg',
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
                        "Planetarium programme",
                        style: TextStyle(
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width * 0.15),
                        child: Table(
                          border: TableBorder.symmetric(
                            inside: BorderSide(
                              width: 2,
                              color: Colors.grey,
                            ),
                          ),
                          children: [
                            TableRow(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 2),
                                  child: Text(" English"),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 2),
                                  child: Text(" Tamil"),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text(" 11.45 A.M."),
                                Text(" 10.30 A.M."),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text(" 02.15 P.M."),
                                Text(" 01.00 P.M."),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text(""),
                                Text(" 03.30 P.M."),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text(""),
                                Text(" 04.45 P.M."),
                              ],
                            ),
                          ],
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
