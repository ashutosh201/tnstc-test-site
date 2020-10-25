import 'package:flutter/material.dart';
import 'package:tnstc_test_site/Data/Data.dart';
import 'package:tnstc_test_site/Pages/Centre1.dart';
import 'package:tnstc_test_site/Pages/Centre2.dart';
import 'package:tnstc_test_site/Pages/Centre3.dart';
import 'package:tnstc_test_site/Pages/Centre4.dart';

class Homepagebody2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopHomepagebody2();
        } else {
          return MobileHomepagebody2();
        }
      },
    );
  }
}

class MobileHomepagebody2 extends StatefulWidget {
  @override
  _MobileHomepagebody2State createState() => _MobileHomepagebody2State();
}

class _MobileHomepagebody2State extends State<MobileHomepagebody2> {
  double cardwidth = 383, cardheight = 500;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            TweenAnimationBuilder(
              child: SizedBox(),
              tween: Tween<double>(begin: 1, end: 0),
              duration: Duration(milliseconds: 500),
              curve: Curves.easeIn,
              builder: (context, value, child) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: value * (MediaQuery.of(context).size.width + 10)),
                  child: child,
                );
              },
            ),
            Container(
              height: cardheight,
              width: cardwidth,
              child: Card(
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 350,
                      width: cardwidth,
                      child: Hero(
                        tag: "centre1imagemobile",
                        child: Image.asset(
                          'assets/windowimage1.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      height: 30,
                      indent: 15,
                      endIndent: 300,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, bottom: 15),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          centrename[0],
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 150,
                        padding: const EdgeInsets.only(left: 15),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Centre1()));
                          },
                          child: Text(
                            "View",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          color: Colors.lightBlue[900],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: cardheight,
              width: cardwidth,
              child: Card(
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 350,
                      width: cardwidth,
                      child: Hero(
                        tag: "centre2imagemobile",
                        child: Image.asset(
                          'assets/windowimage2.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      height: 30,
                      indent: 15,
                      endIndent: 300,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, bottom: 15),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          centrename[1],
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 150,
                        padding: const EdgeInsets.only(left: 15),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Centre2()));
                          },
                          child: Text(
                            "View",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          color: Colors.lightBlue[900],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: cardheight,
              width: cardwidth,
              child: Card(
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 350,
                      width: cardwidth,
                      child: Hero(
                        tag: "centre3imagemobile",
                        child: Image.asset(
                          'assets/windowimage3.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      height: 30,
                      indent: 15,
                      endIndent: 300,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, bottom: 15),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          centrename[2],
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 150,
                        padding: const EdgeInsets.only(left: 15),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Centre3()));
                          },
                          child: Text(
                            "View",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          color: Colors.lightBlue[900],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: cardheight,
              width: cardwidth,
              child: Card(
                elevation: 20,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 350,
                      width: cardwidth,
                      child: Hero(
                        tag: "centre4imagemobile",
                        child: Image.asset(
                          'assets/windowimage4.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 2,
                      height: 30,
                      indent: 15,
                      endIndent: 300,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, bottom: 15),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          centrename[3],
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 150,
                        padding: const EdgeInsets.only(left: 15),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Centre4()));
                          },
                          child: Text(
                            "View",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          color: Colors.lightBlue[900],
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
    );
  }
}

class DesktopHomepagebody2 extends StatefulWidget {
  @override
  _DesktopHomepagebody2State createState() => _DesktopHomepagebody2State();
}

class _DesktopHomepagebody2State extends State<DesktopHomepagebody2> {
  double photoheight = 400;
  double photowidth = 650;
  Color button1textcolor = Colors.black;
  Color button2textcolor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[350],
      /*
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/homepagebackground4.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      */
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 100,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 40),
                  height: photoheight,
                  width: photowidth,
                  child: Hero(
                    tag: "centre1image",
                    child: Image.asset('assets/windowimage1.jpg',
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Colors.teal,
                        width: 4,
                      ),
                      bottom: BorderSide(
                        color: Colors.teal,
                        width: 4,
                      ),
                      right: BorderSide(
                        color: Colors.teal,
                        width: 4,
                      ),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          centrename[0],
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        width: 700,
                        child: Text(
                          centreinfo[0],
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 550, 10),
                        child: MouseRegion(
                          onHover: (event) {
                            setState(() {
                              button1textcolor = Colors.white;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              button1textcolor = Colors.black;
                            });
                          },
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Centre1()));
                            },
                            splashColor: Colors.white,
                            hoverColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1.0),
                              side: BorderSide(
                                width: 2,
                                color: Colors.black,
                              ),
                            ),
                            child: Text(
                              "View",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: button1textcolor,
                              ),
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
          SizedBox(
            height: 150,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  color: Colors.blueGrey[400].withOpacity(0.8),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          centrename[1],
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        width: 700,
                        child: Text(
                          centreinfo[1],
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(550, 0, 0, 10),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Centre2()));
                          },
                          child: Text(
                            "View",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          color: Colors.lightBlue[900],
                          splashColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
                  height: photoheight,
                  width: photowidth,
                  child: Hero(
                    tag: 'centre2image',
                    child: Image.asset('assets/windowimage2.jpg',
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 150,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(left: 40),
                  height: photoheight,
                  width: photowidth,
                  child: Hero(
                    tag: 'centre3image',
                    child: Image.asset('assets/windowimage3.jpg',
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Colors.teal,
                        width: 4,
                      ),
                      bottom: BorderSide(
                        color: Colors.teal,
                        width: 4,
                      ),
                      right: BorderSide(
                        color: Colors.teal,
                        width: 4,
                      ),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          centrename[2],
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        width: 700,
                        child: Text(
                          centreinfo[2],
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 550, 10),
                        child: MouseRegion(
                          onHover: (event) {
                            setState(() {
                              button2textcolor = Colors.white;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              button2textcolor = Colors.black;
                            });
                          },
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Centre3()));
                            },
                            splashColor: Colors.white,
                            hoverColor: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1.0),
                              side: BorderSide(
                                width: 2,
                                color: Colors.black,
                              ),
                            ),
                            child: Text(
                              "View",
                              style: TextStyle(
                                color: button2textcolor,
                                fontWeight: FontWeight.bold,
                              ),
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
          SizedBox(
            height: 150,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  color: Colors.blueGrey[400].withOpacity(0.8),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          centrename[3],
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        width: 700,
                        child: Text(
                          centreinfo[3],
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(550, 0, 0, 10),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Centre4()));
                          },
                          child: Text(
                            "View",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          color: Colors.lightBlue[900],
                          splashColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 40, 0),
                  height: photoheight,
                  width: photowidth,
                  child: Hero(
                    tag: 'centre4image',
                    child: Image.asset('assets/windowimage4.jpg',
                        fit: BoxFit.cover),
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
    );
  }
}
