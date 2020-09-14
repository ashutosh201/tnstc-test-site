import 'package:flutter/material.dart';


class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopFooter();
        } else {
          return MobileFooter();
        }
      },
    );
  }
}

class DesktopFooter extends StatefulWidget {
  @override
  _DesktopFooterState createState() => _DesktopFooterState();
}

class _DesktopFooterState extends State<DesktopFooter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 300,
      color: Colors.cyan[200].withOpacity(0.9),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.15,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 5, 0, 0),
              child: Column(
                children: [
                  Text(
                    "Tamilnadu Science & Technology Centre",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    "Gandhi Mandapam Road,",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    
                  ),
                  
                  Text(
                    "Tel: 044 24410025, 24915250",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "Email: tnstc.science@gmail.com",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.10,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Quick Links",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
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
                          color: Colors.black,
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
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
                    height: 30,
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        "How to Reach",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
                    height: 30,
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        "Feed Back",
                        style: TextStyle(
                          color: Colors.black,
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

class MobileFooter extends StatefulWidget {
  @override
  _MobileFooterState createState() => _MobileFooterState();
}

class _MobileFooterState extends State<MobileFooter> {
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
                color: Colors.black,
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
                        color: Colors.black,
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
                        color: Colors.black,
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
                        color: Colors.black,
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
                        color: Colors.black,
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
