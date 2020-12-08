import 'package:flutter/material.dart';
import 'package:tnstc_test_site/Homepagebody/Sidemenu.dart';
import 'package:tnstc_test_site/Navbar/Navbar.dart';

class Library extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopLibrary();
        } else {
          return MobileLibrary();
        }
      },
    );
  }
}

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class DesktopLibrary extends StatefulWidget {
  @override
  _DesktopLibraryState createState() => _DesktopLibraryState();
}

class _DesktopLibraryState extends State<DesktopLibrary> {
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 70,
                                  ),
                                  Text(
                                    "A Library facility with more than 2000 books on different fields of Science and Technology has been created. Also, there are scientific journals and periodicals, being published by leading research institutions from India and Abroad. The facility is allowed for the permitted students who undertake projects at the Centre as a part of their curriculum. Permission is granted to undertake project works based on the availability of facilities and as recommended by the respective institutions.",
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

class MobileLibrary extends StatefulWidget {
  @override
  _MobileLibraryState createState() => _MobileLibraryState();
}

class _MobileLibraryState extends State<MobileLibrary> {
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
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
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
