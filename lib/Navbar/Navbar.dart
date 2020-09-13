import 'package:flutter/material.dart';


class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatefulWidget {
  @override
  _DesktopNavbarState createState() => _DesktopNavbarState();
}

class _DesktopNavbarState extends State<DesktopNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.blueGrey[600],
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(2, 0, 0, 0),
              child: Text(
                "Tamilnadu Science & Technology Centre",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.35,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        "About TNSTC",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Fee Structure",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Timings",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
                    height: 30,
                    child: FloatingActionButton.extended(
                      onPressed: () {},
                      label: Text(
                        "Contact Us",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MobileNavbar extends StatefulWidget {
  @override
  _MobileNavbarState createState() => _MobileNavbarState();
}

class _MobileNavbarState extends State<MobileNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.blueGrey[600],
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 5,
          ),
          Container(
            child: Text(
              "Tamilnadu Science & Technology Centre",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "About TNSTC",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                /*
                Container(
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Fee Structure",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                */
                Container(
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Timings",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  child: FloatingActionButton.extended(
                    onPressed: () {},
                    label: Text(
                      "Contact Us",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
