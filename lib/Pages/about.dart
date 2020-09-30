import 'package:flutter/material.dart';
import 'package:tnstc_test_site/Navbar/Navbar.dart';
import 'package:tnstc_test_site/Pages/aboutpagebody.dart';
import 'package:tnstc_test_site/Pages/Centre1.dart';
import 'package:tnstc_test_site/Pages/Centre2.dart';
import 'package:tnstc_test_site/Pages/Centre3.dart';
import 'package:tnstc_test_site/Pages/Centre4.dart';
import 'package:tnstc_test_site/Footer/Footer.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  Widget bodydata() => DataTable(
        columns: [
          DataColumn(
            label: Text(
              "Periyar Science and Technology Centre,Chennai",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
            ),
          ),
          DataColumn(
            label: Text(
              "Inaugrated On",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
            ),
          ),
        ],
        rows: <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text("B.M. Birla Planetarium")),
              DataCell(Text("May 11,1988")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("Halls of Science and Technology")),
              DataCell(Text("Septemper 17,1990")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text(
                "Anna Science Centre- Planetarium,Tiruchirappalli",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                ),
              )),
              DataCell(Text(
                "",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                ),
              )),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("Planetarium")),
              DataCell(Text("June 10,1999")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("Environmental Gallery")),
              DataCell(Text("April 22,2006")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text(
                "District Science Centre, Vellore",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                ),
              )),
              DataCell(Text(
                "January 25,2011",
              )),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text(
                "Regional Science Centre, Coimbatore",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                ),
              )),
              DataCell(Text(
                "May 6,2013",
              )),
            ],
          ),
        ],
      );

  double cardwidth = 1200, cardheight = 376;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: <Widget>[
              Aboutpagebody1(),
              Divider(
                height: 50,
                thickness: 2,
                indent: MediaQuery.of(context).size.width * 0.2,
                endIndent: MediaQuery.of(context).size.width * 0.2,
                color: Colors.grey,
              ),
              Column(
                children: [
                  Container(
                    child: bodydata(),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      child: Text(
                        "Home",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      color: Colors.blue.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
              Divider(
                height: 50,
                thickness: 2,
                indent: MediaQuery.of(context).size.width * 0.2,
                endIndent: MediaQuery.of(context).size.width * 0.2,
                color: Colors.grey,
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
