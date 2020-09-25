import 'package:flutter/material.dart';
import 'package:tnstc_test_site/Footer/Footer.dart';

class DesktopHomepagebody4 extends StatefulWidget {
  @override
  _DesktopHomepagebody4State createState() => _DesktopHomepagebody4State();
}

class _DesktopHomepagebody4State extends State<DesktopHomepagebody4> {
  double box1side = 200, box2side = 200, box3side = 200;
  bool box1text = true, box2text = true, box3text = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 450,
          width: MediaQuery.of(context).size.width * 0.3,
          child: Column(
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.3,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  margin: EdgeInsets.all(0),
                  elevation: 20,
                  child: Center(
                    child: Text(
                      "News & Announcements",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 400,
                width: MediaQuery.of(context).size.width * 0.3,
                color: Colors.lightBlue[900].withOpacity(0.4),
              ),
            ],
          ),
        ),
        Container(
          height: 450,
          width: MediaQuery.of(context).size.width * 0.7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MouseRegion(
                onHover: (event) {
                  box1side = 250;
                  box1text = false;
                  setState(() {});
                },
                onExit: (event) {
                  box1side = 200;
                  box1text = true;
                  setState(() {});
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  height: box1side,
                  width: box1side,
                  child: Card(
                    color: Colors.teal.withOpacity(0.8),
                    elevation: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedDefaultTextStyle(
                          duration: Duration(milliseconds: 200),
                          child: Text("The Hall of"),
                          style: box1text
                              ? TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )
                              : TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                        ),
                        AnimatedDefaultTextStyle(
                          duration: Duration(milliseconds: 200),
                          child: Text("Nuclear Power"),
                          style: box1text
                              ? TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )
                              : TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                        ),
                      ],
                    ),
                  ),
                  /*
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4,
                      color: Colors.lightBlue[900],
                    ),
                  ),
                  */
                ),
              ),
              SizedBox(
                width: 60,
              ),
              MouseRegion(
                onHover: (event) {
                  box2side = 250;
                  box2text = false;
                  setState(() {});
                },
                onExit: (event) {
                  box2side = 200;
                  box2text = true;
                  setState(() {});
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  height: box2side,
                  width: box2side,
                  child: Card(
                    color: Colors.teal.withOpacity(0.8),
                    elevation: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedDefaultTextStyle(
                          duration: Duration(milliseconds: 200),
                          child: Text("Right to"),
                          style: box2text
                              ? TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )
                              : TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                        ),
                        AnimatedDefaultTextStyle(
                          duration: Duration(milliseconds: 200),
                          child: Text("Information Act"),
                          style: box2text
                              ? TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )
                              : TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                        ),
                      ],
                    ),
                  ),
                  /*
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4,
                      color: Colors.lightBlue[900],
                    ),
                  ),
                  */
                ),
              ),
              SizedBox(
                width: 60,
              ),
              MouseRegion(
                onHover: (event) {
                  box3side = 250;
                  box3text = false;
                  setState(() {});
                },
                onExit: (event) {
                  box3side = 200;
                  box3text = true;
                  setState(() {});
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  height: box3side,
                  width: box3side,
                  child: Card(
                    color: Colors.teal.withOpacity(0.8),
                    elevation: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedDefaultTextStyle(
                          duration: Duration(milliseconds: 200),
                          child: Text("Inspire"),
                          style: box3text
                              ? TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )
                              : TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                        ),
                        AnimatedDefaultTextStyle(
                          duration: Duration(milliseconds: 200),
                          child: Text("Registration"),
                          style: box3text
                              ? TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )
                              : TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                        ),
                        AnimatedDefaultTextStyle(
                          duration: Duration(milliseconds: 200),
                          child: Text("Method"),
                          style: box3text
                              ? TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )
                              : TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                        ),
                      ],
                    ),
                  ),
                  /*
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4,
                      color: Colors.lightBlue[900],
                    ),
                  ),
                  */
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
