import 'package:flutter/material.dart';
import 'package:tnstc_test_site/Navbar/Navbar.dart';
import 'package:tnstc_test_site/Homepagebody/Sidemenu.dart';

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopContactPage();
        } else {
          return MobileContactPage();
        }
      },
    );
  }
}

class MobileContactPage extends StatefulWidget {
  @override
  _MobileContactPageState createState() => _MobileContactPageState();
}

class _MobileContactPageState extends State<MobileContactPage> {
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
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  child: Image.asset(
                    'assets/homepagebackground4.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  color: Colors.black.withOpacity(0.7),
                  child: Center(
                    child: Container(
                      child: Text(
                        " Contact Us ",
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(
                        width: 5,
                        color: Colors.teal,
                      )),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: 300,
              child: Card(
                elevation: 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Tamilnadu Science and Technology",
                      style: TextStyle(
                        color: Colors.lightBlue[900],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Centre - Chennai",
                      style: TextStyle(
                        color: Colors.lightBlue[900],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, top: 20),
                        child: Text(
                          "Executive Director\n"
                          "Tamilnadu Science and Technology Centre,\n"
                          "Gandhi Mandapam Road,\n"
                          "Chennai - 600 025.\n"
                          "Phone: 044-24410025, 24915250\n"
                          "E-mail: tnstc.science@gmail.com",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: 300,
              child: Card(
                elevation: 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Anna Science Centre",
                      style: TextStyle(
                        color: Colors.lightBlue[900],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "- Planetarium, Tiruchirappalli",
                      style: TextStyle(
                        color: Colors.lightBlue[900],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, top: 20),
                        child: Text(
                          "Project Director\n"
                          "Anna Science Centre - Planetarium,\n"
                          "Pudukkottai Road (Near Airport),\n"
                          "Tiruchirappalli - 620 007.\n"
                          "Ph: 0431 - 2332190, 2331921\n"
                          "E-mail: ascplanetarium@gmail.com",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: 300,
              child: Card(
                elevation: 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "District Science Centre",
                      style: TextStyle(
                        color: Colors.lightBlue[900],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "- Vellore",
                      style: TextStyle(
                        color: Colors.lightBlue[900],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, top: 20),
                        child: Text(
                          "District Science Officer\n"
                          "District Science Centre,\n"
                          "Sathuvachari,\n"
                          "Vellore - 632 009.\n"
                          "Ph: 0416 - 2252297\n"
                          "E-mail: dscvellore@gmail.com",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: 300,
              child: Card(
                elevation: 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Regional Science Centre",
                      style: TextStyle(
                        color: Colors.lightBlue[900],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "- Coimbatore",
                      style: TextStyle(
                        color: Colors.lightBlue[900],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30, top: 20),
                        child: Text(
                          "District Science Officer\n"
                          "Regional Science Centre,\n"
                          "Codissia road,\n"
                          "Coimbatore - 641 014.\n"
                          "Ph: 0422 - 2570325, 0422-2573025\n"
                          "E-mail: rsc.kovai14@gmail.com",
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}

class DesktopContactPage extends StatefulWidget {
  @override
  _DesktopContactPageState createState() => _DesktopContactPageState();
}

class _DesktopContactPageState extends State<DesktopContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 400,
                      child: Image.asset(
                        'assets/homepagebackground4.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 400,
                      color: Colors.black.withOpacity(0.7),
                      child: Center(
                        child: Container(
                          child: Text(
                            " Contact Us ",
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                            width: 5,
                            color: Colors.teal,
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  height: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 500,
                        height: 280,
                        child: Card(
                          elevation: 20,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Tamilnadu Science and Technology",
                                style: TextStyle(
                                  color: Colors.lightBlue[900],
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Centre - Chennai",
                                style: TextStyle(
                                  color: Colors.lightBlue[900],
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 30, top: 20),
                                  child: Text(
                                    "Executive Director\n"
                                    "Tamilnadu Science and Technology Centre,\n"
                                    "Gandhi Mandapam Road,\n"
                                    "Chennai - 600 025.\n"
                                    "Phone: 044-24410025, 24915250\n"
                                    "E-mail: tnstc.science@gmail.com",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 500,
                        height: 280,
                        child: Card(
                          elevation: 20,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Anna Science Centre",
                                style: TextStyle(
                                  color: Colors.lightBlue[900],
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "- Planetarium, Tiruchirappalli",
                                style: TextStyle(
                                  color: Colors.lightBlue[900],
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 30, top: 20),
                                  child: Text(
                                    "Project Director\n"
                                    "Anna Science Centre - Planetarium,\n"
                                    "Pudukkottai Road (Near Airport),\n"
                                    "Tiruchirappalli - 620 007.\n"
                                    "Ph: 0431 - 2332190, 2331921\n"
                                    "E-mail: ascplanetarium@gmail.com",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 500,
                        height: 280,
                        child: Card(
                          elevation: 20,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "District Science Centre",
                                style: TextStyle(
                                  color: Colors.lightBlue[900],
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "- Vellore",
                                style: TextStyle(
                                  color: Colors.lightBlue[900],
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 30, top: 20),
                                  child: Text(
                                    "District Science Officer\n"
                                    "District Science Centre,\n"
                                    "Sathuvachari,\n"
                                    "Vellore - 632 009.\n"
                                    "Ph: 0416 - 2252297\n"
                                    "E-mail: dscvellore@gmail.com",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 500,
                        height: 280,
                        child: Card(
                          elevation: 20,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Regional Science Centre",
                                style: TextStyle(
                                  color: Colors.lightBlue[900],
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "- Coimbatore",
                                style: TextStyle(
                                  color: Colors.lightBlue[900],
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 30, top: 20),
                                  child: Text(
                                    "District Science Officer\n"
                                    "Regional Science Centre,\n"
                                    "Codissia road,\n"
                                    "Coimbatore - 641 014.\n"
                                    "Ph: 0422 - 2570325, 0422-2573025\n"
                                    "E-mail: rsc.kovai14@gmail.com",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
          DesktopNavbar(),
        ],
      ),
    );
  }
}
