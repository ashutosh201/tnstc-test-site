import 'package:flutter/material.dart';
import 'package:tnstc_test_site/Footer/Footer.dart';

class DesktopHomepagebody4 extends StatefulWidget {
  @override
  _DesktopHomepagebody4State createState() => _DesktopHomepagebody4State();
}

class _DesktopHomepagebody4State extends State<DesktopHomepagebody4> {
  double box1side = 200, box2side = 200, box3side = 200;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 450,
          width: MediaQuery.of(context).size.width * 0.3,
          color: Colors.red,
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
                  setState(() {});
                },
                onExit: (event) {
                  box1side = 200;
                  setState(() {});
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  height: box1side,
                  width: box1side,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "The Hall of",
                        style: TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Nuclear Power",
                        style: TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4,
                      color: Colors.lightBlue[900],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 60,
              ),
              MouseRegion(
                onHover: (event) {
                  box2side = 250;
                  setState(() {});
                },
                onExit: (event) {
                  box2side = 200;
                  setState(() {});
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  height: box2side,
                  width: box2side,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Right to",
                        style: TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Information Act",
                        style: TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4,
                      color: Colors.lightBlue[900],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 60,
              ),
              MouseRegion(
                onHover: (event) {
                  box3side = 250;
                  setState(() {});
                },
                onExit: (event) {
                  box3side = 200;
                  setState(() {});
                },
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  height: box3side,
                  width: box3side,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Inspire",
                        style: TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Registration",
                        style: TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Method",
                        style: TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4,
                      color: Colors.lightBlue[900],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
