import 'package:flutter/material.dart';

class Homepagebody1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopHomepagebody1();
        } else {
          return MobileHomepagebody1();
        }
      },
    );
  }
}

class DesktopHomepagebody1 extends StatefulWidget {
  @override
  _DesktopHomepagebody1State createState() => _DesktopHomepagebody1State();
}

class _DesktopHomepagebody1State extends State<DesktopHomepagebody1> {
  PageController pagecontroller = PageController(initialPage: 0);
  int imagewindowindex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.9,
      child: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.9,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/homepagebackground.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.9,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.cyan[700].withOpacity(0.5),
                  Colors.cyan[900]
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.9,
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.04,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.9,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                      ),
                      TweenAnimationBuilder(
                        child: Text(
                          "Aims & Objectives",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        tween: Tween<double>(begin: 0, end: 1),
                        duration: Duration(seconds: 2),
                        builder: (context, value, child) {
                          return Opacity(
                            opacity: value,
                            child: child,
                          );
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "To popularise Science and Technology among the general public in the urban and rural areas.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: FloatingActionButton.extended(
                          onPressed: () {},
                          label: Text(
                            "Details",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.1,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Card(
                    child: Stack(
                      children: <Widget>[
                        PageView(
                          controller: pagecontroller,
                          children: <Widget>[
                            Container(
                              height: MediaQuery.of(context).size.height * 0.6,
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Image.asset('assets/windowimage1.jpg',
                                  fit: BoxFit.cover),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.6,
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Image.asset('assets/windowimage2.jpg',
                                  fit: BoxFit.cover),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.6,
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Image.asset('assets/windowimage3.jpg',
                                  fit: BoxFit.cover),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.6,
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Image.asset('assets/windowimage4.jpg',
                                  fit: BoxFit.cover),
                            ),
                          ],
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              FloatingActionButton(
                                onPressed: () {
                                  if (imagewindowindex > 0) {
                                    imagewindowindex--;
                                    pagecontroller.animateToPage(
                                        imagewindowindex,
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.decelerate);
                                  }
                                },
                                backgroundColor: Colors.grey.withOpacity(0.8),
                                child: Icon(Icons.arrow_back_ios),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  if (imagewindowindex < 3) {
                                    imagewindowindex++;
                                    pagecontroller.animateToPage(
                                        imagewindowindex,
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.decelerate);
                                  }
                                },
                                backgroundColor: Colors.grey.withOpacity(0.8),
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                        ),
                      ],
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

class MobileHomepagebody1 extends StatefulWidget {
  @override
  _MobileHomepagebody1State createState() => _MobileHomepagebody1State();
}

class _MobileHomepagebody1State extends State<MobileHomepagebody1> {
  PageController pagecontroller = PageController(initialPage: 0);
  int imagewindowindex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/homepagebackground.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.transparent, Colors.cyan[900]],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                Text(
                  "Aims & Objectives",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40.0, 0, 40.0, 0),
                  child: Text(
                    "To popularise Science and Technology among the general public in the urban and rural areas.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: FloatingActionButton.extended(
                    onPressed: () {},
                    label: Text(
                      "Details",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Card(
                    child: Stack(
                      children: <Widget>[
                        PageView(
                          controller: pagecontroller,
                          children: <Widget>[
                            Container(
                              height: 300,
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Image.asset('assets/windowimage1.jpg',
                                  fit: BoxFit.cover),
                            ),
                            Container(
                              height: 300,
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Image.asset('assets/windowimage2.jpg',
                                  fit: BoxFit.cover),
                            ),
                            Container(
                              height: 300,
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Image.asset('assets/windowimage3.jpg',
                                  fit: BoxFit.cover),
                            ),
                            Container(
                              height: 300,
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Image.asset('assets/windowimage4.jpg',
                                  fit: BoxFit.cover),
                            ),
                          ],
                        ),
                        Container(
                          height: 300,
                          width: MediaQuery.of(context).size.width * 0.90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              FloatingActionButton(
                                mini: true,
                                onPressed: () {
                                  if (imagewindowindex > 0) {
                                    imagewindowindex--;
                                    pagecontroller.animateToPage(
                                        imagewindowindex,
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.decelerate);
                                  }
                                },
                                backgroundColor: Colors.grey.withOpacity(0.8),
                                child: Icon(Icons.arrow_back_ios),
                              ),
                              FloatingActionButton(
                                mini: true,
                                onPressed: () {
                                  if (imagewindowindex < 3) {
                                    imagewindowindex++;
                                    pagecontroller.animateToPage(
                                        imagewindowindex,
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.decelerate);
                                  }
                                },
                                backgroundColor: Colors.grey.withOpacity(0.8),
                                child: Icon(Icons.arrow_forward_ios),
                              ),
                            ],
                          ),
                        ),
                      ],
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
