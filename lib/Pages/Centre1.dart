import 'package:flutter/material.dart';
import 'package:tnstc_test_site/Footer/Footer.dart';
import 'package:tnstc_test_site/Navbar/Navbar.dart';
import 'package:tnstc_test_site/Homepagebody/Sidemenu.dart';

List<String> centre1Para = [
  "The Planetarium is considered in the modern world as an Indoor - Universe. The Planetarium has provisions to execute diurnal, annual, latitudinal and precessional motions. The special effect projectors inside the Planetarium recreate some of the most awe-inspiring astronomical phenomena on the specially perforated aluminium inner dome. Multi-dimensional activities and multimedia projection arrangements which have been incorporated inside the sky theatre make the programme further lively and excited one. The Planetarium, which is fully computerised, can seat 236 persons at a time.",
  "From the date of inauguration of the Planetarium on May 11, 1988 by the then President of India, Planetarium has introduced so-far 35 Planetarium Programmes on the topics like Solar System, Life Cycle of Stars, Are We Alone in the Universe? Sky and Seasons, Comets, Our Universe, Man on the Moon, The Living Planet - Earth, Our Worlds and Beyond, etc."
];

class DesktopCentre1 extends StatefulWidget {
  @override
  _DesktopCentre1State createState() => _DesktopCentre1State();
}

class _DesktopCentre1State extends State<DesktopCentre1> {
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
                          tag: "centre1image",
                          child: Image.asset(
                            'assets/windowimage1.jpg',
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
                                    "Periyar Science & Technology Centre, Chennai",
                                    style: TextStyle(
                                      color: Colors.lightBlue[900],
                                      fontSize: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    centre1Para[0],
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    centre1Para[1],
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
                                            Text(" 11:45 A.M."),
                                            Text(" 12:00 Noon"),
                                          ],
                                        ),
                                        TableRow(
                                          children: [
                                            Text(" 1:15 P.M."),
                                            Text(" 2:30 P.M."),
                                          ],
                                        ),
                                        TableRow(
                                          children: [
                                            Text(" 3:45 P.M."),
                                            Text(" 4:30 P.M."),
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
                                    "Halls of Science & Technology - 10:00 A.M. to 5:45 P.M.",
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
