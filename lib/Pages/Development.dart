import 'package:flutter/material.dart';
import 'package:tnstc_test_site/Homepagebody/Sidemenu.dart';
import 'package:tnstc_test_site/Navbar/Navbar.dart';

class Development extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopDevelopment();
        } else {
          return MobileDevelopment();
        }
      },
    );
  }
}

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class DesktopDevelopment extends StatefulWidget {
  @override
  _DesktopDevelopmentState createState() => _DesktopDevelopmentState();
}

class _DesktopDevelopmentState extends State<DesktopDevelopment> {
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
                                  " Development Activities ",
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
                                    height: 70,
                                  ),
                                  Text(
                                    "Establishing an Innovation Hub in the Anna Science Centre, Tiruchirappalli:",
                                    style: TextStyle(
                                      color: Colors.lightBlue[900],
                                      fontSize: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "The Anna Science Centre, Tiruchirappalli will be provided with an innovation hub at a cost of Rs.1.50 Crores (Rupees One Crore and Fifty Lakhs Only). This lab will have discovery hall, idea lab, Break and remake corner, build from scrap corner and idea box area. This will be provide an opportunity for the students to develop creative ability skills. The work is under progress. The project is being implemented on 50:50 cost sharing basis by National Council Science of Museums (NCSM), Government of India, (Ministry of Culture) and Tamilnadu Science and Technology Centre, Chennai. The facility will be inaugurated during the year 2019-2020.",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Text(
                                    "Establishing an Innovation Hub in the Regional Science Centre, Coimbatore:",
                                    style: TextStyle(
                                      color: Colors.lightBlue[900],
                                      fontSize: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "The Regional Science Centre, Coimbatore will be provided with an innovation hub at a cost of Rs.1.80 Crores (Rupees One crore and eighty lakhs only). This lab will have discovery hall, idea lab, Break and remake corner, build from scrap corner and idea box area. This will be provide an opportunity for the students to develop creative ability skills. The work is under progress. The project is being implemented on 50:50 cost sharing basis by National Council Science of Museums (NCSM), Government of India, (Ministry of Culture) and Tamilnadu Science and Technology Centre, Chennai. The facility will be inaugurated during the year 2019 - 2020.",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 70,
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

class MobileDevelopment extends StatefulWidget {
  @override
  _MobileDevelopmentState createState() => _MobileDevelopmentState();
}

class _MobileDevelopmentState extends State<MobileDevelopment> {
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
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            " Development ",
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            " Activities ",
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
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
                        "Establishing an Innovation Hub in the Anna Science Centre, Tiruchirappalli:",
                        style: TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "The Anna Science Centre, Tiruchirappalli will be provided with an innovation hub at a cost of Rs.1.50 Crores (Rupees One Crore and Fifty Lakhs Only). This lab will have discovery hall, idea lab, Break and remake corner, build from scrap corner and idea box area. This will be provide an opportunity for the students to develop creative ability skills. The work is under progress. The project is being implemented on 50:50 cost sharing basis by National Council Science of Museums (NCSM), Government of India, (Ministry of Culture) and Tamilnadu Science and Technology Centre, Chennai. The facility will be inaugurated during the year 2019-2020.",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Establishing an Innovation Hub in the Regional Science Centre, Coimbatore:",
                        style: TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "The Regional Science Centre, Coimbatore will be provided with an innovation hub at a cost of Rs.1.80 Crores (Rupees One crore and eighty lakhs only). This lab will have discovery hall, idea lab, Break and remake corner, build from scrap corner and idea box area. This will be provide an opportunity for the students to develop creative ability skills. The work is under progress. The project is being implemented on 50:50 cost sharing basis by National Council Science of Museums (NCSM), Government of India, (Ministry of Culture) and Tamilnadu Science and Technology Centre, Chennai. The facility will be inaugurated during the year 2019 - 2020.",
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
