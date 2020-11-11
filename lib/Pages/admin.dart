import 'package:flutter/material.dart';
import 'package:tnstc_test_site/Homepagebody/Sidemenu.dart';
import 'package:tnstc_test_site/Navbar/Navbar.dart';

class Admin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopAdmin();
        } else {
          return MobileAdmin();
        }
      },
    );
  }
}

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class DesktopAdmin extends StatefulWidget {
  @override
  _DesktopAdminState createState() => _DesktopAdminState();
}

class _DesktopAdminState extends State<DesktopAdmin> {
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
                      Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 400,
                            child: Image.asset(
                              'assets/admin.jpg',
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
                                  " Administration ",
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
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Card(
                          color: Colors.yellow[200],
                          elevation: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Thiru.K.P Anbalagan",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Honourable Minister for",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Higher Education",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "CHAIRMAN",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: Card(
                          color: Colors.greenAccent[200],
                          elevation: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                "Executive Director",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Tamilnadu Science and",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Tecnology Centre",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Chennai",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Card(
                              color: Colors.blue[100],
                              elevation: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Director",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  Text(
                                    "Periyar science and",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Technology Centre",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Chennai",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Card(
                              color: Colors.blue[100],
                              elevation: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Project Director",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  Text(
                                    "Anna Science Centre",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "-Planeterium",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Thiruchirapalli",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Card(
                              color: Colors.blue[100],
                              elevation: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "District Science Officer",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  Text(
                                    "District Science Centre",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Vellore",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            child: Card(
                              color: Colors.blue[100],
                              elevation: 20,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "District Science Officer",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  Text(
                                    "Regional Science Centre",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Coimbatore",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
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

class MobileAdmin extends StatefulWidget {
  @override
  _MobileAdminState createState() => _MobileAdminState();
}

class _MobileAdminState extends State<MobileAdmin> {
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
                    'assets/libraryimage.jpg',
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
                        " Library ",
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
                        ),
                      ),
                    ),
                  ),
                ),
              ],
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
                        "A Library facility with more than 2000 books on different fields of Science and Technology has been created. Also, there are scientific journals and periodicals, being published by leading research institutions from India and Abroad. The facility is allowed for the permitted students who undertake projects at the Centre as a part of their curriculum. Permission is granted to undertake project works based on the availability of facilities and as recommended by the respective institutions.",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
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
