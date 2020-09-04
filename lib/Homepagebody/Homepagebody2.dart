import 'package:flutter/material.dart';
import 'package:tnstc_test_site/Data/Data.dart';

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
  double cardwidth = 383, cardheight = 420;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardheight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, index) {
          return Container(
            height: cardheight,
            width: cardwidth,
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 300,
                    width: cardwidth,
                    child: Image.asset(
                      'assets/windowimage${index + 1}.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      centrename[index],
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 15, 270, 0),
                    child: FlatButton(
                      onPressed: () {},
                      child: Text(
                        "View",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      color: Colors.blue.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class DesktopHomepagebody2 extends StatefulWidget {
  @override
  _DesktopHomepagebody2State createState() => _DesktopHomepagebody2State();
}

class _DesktopHomepagebody2State extends State<DesktopHomepagebody2> {
  double photoheight = 300;
  double photowidth = 500;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/homepagebackground4.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  height: photoheight,
                  width: photowidth,
                  child:
                      Image.asset('assets/windowimage1.jpg', fit: BoxFit.cover),
                ),
                Container(
                  color: Colors.cyan[200].withOpacity(0.9),
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
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 550, 0),
                        child: FlatButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3.0),
                            side: BorderSide(
                              width: 2,
                              color: Colors.black,
                            ),
                          ),
                          child: Text(
                            "View",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
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
          Container(
            color: Colors.blueGrey[400].withOpacity(0.8),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Column(
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
                      padding: const EdgeInsets.fromLTRB(550, 0, 0, 0),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          "View",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.blue.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  height: photoheight,
                  width: photowidth,
                  child:
                      Image.asset('assets/windowimage2.jpg', fit: BoxFit.cover),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  height: photoheight,
                  width: photowidth,
                  child:
                      Image.asset('assets/windowimage3.jpg', fit: BoxFit.cover),
                ),
                Container(
                  color: Colors.cyan[200].withOpacity(0.9),
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
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 550, 0),
                        child: FlatButton(
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3.0),
                            side: BorderSide(
                              width: 2,
                              color: Colors.black,
                            ),
                          ),
                          child: Text(
                            "View",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
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
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.blueGrey[400].withOpacity(0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Column(
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
                      padding: const EdgeInsets.fromLTRB(550, 0, 0, 0),
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          "View",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.blue.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  height: photoheight,
                  width: photowidth,
                  child:
                      Image.asset('assets/windowimage4.jpg', fit: BoxFit.cover),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
