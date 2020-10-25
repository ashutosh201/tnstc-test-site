import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tnstc_test_site/Data/Data.dart';

class Homepagebody1 extends StatefulWidget {
  @override
  _Homepagebody1State createState() => _Homepagebody1State();
}

class _Homepagebody1State extends State<Homepagebody1> {
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

class _DesktopHomepagebody1State extends State<DesktopHomepagebody1>
    with SingleTickerProviderStateMixin {
  PageController pagecontroller = PageController(initialPage: 0);
  int imagewindowindex = 0;
  int aimindex = 0;
  double button1opacity = 0.5, button2opacity = 1;
  AnimationController _animationcontroller;
  Animation _opacity;
  @override
  void initState() {
    super.initState();
    _animationcontroller = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
    _opacity = Tween<double>(begin: 0, end: 1).animate(_animationcontroller);
    _animationcontroller.addListener(() {});
    _animationcontroller.forward();
    _animationcontroller.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
        if (aimindex == 0) {
          aimindex = 1;
        } else {
          aimindex = 0;
        }
        _animationcontroller.forward();
      }
      if (status == AnimationStatus.completed) {
        Future.delayed(Duration(seconds: 4), () {
          _animationcontroller.reverse();
        });
      }
    });
  }

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
                colors: [
                  Colors.black.withOpacity(0.8),
                  Colors.lightBlue[900].withOpacity(0.4)
                ],
                /*
                colors: [
                  Colors.transparent,
                  Colors.cyan[700].withOpacity(0.5),
                  Colors.cyan[900].withOpacity(0.8)
                ],
                */
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.04,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3 + 50,
                      ),
                      TweenAnimationBuilder(
                        child: Text(
                          "Aims & Objectives",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
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
                      Container(
                        width: 500,
                        height: 50,
                        child: AnimatedBuilder(
                          animation: _animationcontroller,
                          builder: (context, child) {
                            return Opacity(
                              opacity: _opacity.value,
                              child: Text(
                                aims[aimindex],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: FloatingActionButton.extended(
                          heroTag: null,
                          onPressed: () {},
                          backgroundColor: Colors.teal,
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
                          onPageChanged: (int page) {
                            imagewindowindex = page;
                            if (imagewindowindex == 0) {
                              button1opacity = 0.5;
                              button2opacity = 1;
                              setState(() {});
                            } else if (imagewindowindex == 3) {
                              button1opacity = 1;
                              button2opacity = 0.5;
                              setState(() {});
                            } else {
                              button1opacity = 1;
                              button2opacity = 1;
                              setState(() {});
                            }
                          },
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
                              AnimatedOpacity(
                                opacity: button1opacity,
                                duration: Duration(milliseconds: 300),
                                child: FloatingActionButton(
                                  heroTag: null,
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
                              ),
                              AnimatedOpacity(
                                opacity: button2opacity,
                                duration: Duration(milliseconds: 300),
                                child: FloatingActionButton(
                                  heroTag: null,
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

class _MobileHomepagebody1State extends State<MobileHomepagebody1>
    with SingleTickerProviderStateMixin {
  PageController pagecontroller = PageController(initialPage: 0);
  int imagewindowindex = 0;
  int aimindex = 0;
  double button1opacity = 0.5, button2opacity = 1;
  AnimationController _animationcontroller;
  Animation _opacity;
  @override
  void initState() {
    super.initState();
    _animationcontroller = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
    _opacity = Tween<double>(begin: 0, end: 1).animate(_animationcontroller);
    _animationcontroller.addListener(() {});
    _animationcontroller.forward();
    _animationcontroller.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
        if (aimindex == 0) {
          aimindex = 1;
        } else {
          aimindex = 0;
        }
        _animationcontroller.forward();
      }
      if (status == AnimationStatus.completed) {
        Future.delayed(Duration(seconds: 4), () {
          _animationcontroller.reverse();
        });
      }
    });
  }

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
                colors: [
                  Colors.black.withOpacity(0.8),
                  Colors.lightBlue[900].withOpacity(0.4)
                ],
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
                  height: 150,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text(
                      "Aims &",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Text(
                      "Objectives",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: AnimatedBuilder(
                    animation: _animationcontroller,
                    builder: (context, child) {
                      return Opacity(
                        opacity: _opacity.value,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            aims[aimindex],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: FloatingActionButton.extended(
                    heroTag: null,
                    onPressed: () {},
                    backgroundColor: Colors.teal,
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
        ],
      ),
    );
  }
}
/*
class MobileHomepagebody1 extends StatefulWidget {
  @override
  _MobileHomepagebody1State createState() => _MobileHomepagebody1State();
}

class _MobileHomepagebody1State extends State<MobileHomepagebody1>
    with SingleTickerProviderStateMixin {
  PageController pagecontroller = PageController(initialPage: 0);
  int imagewindowindex = 0;
  int aimindex = 0;
  double button1opacity = 0.5, button2opacity = 1;
  AnimationController _animationcontroller;
  Animation _opacity;
  @override
  void initState() {
    super.initState();
    _animationcontroller = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );
    _opacity = Tween<double>(begin: 0, end: 1).animate(_animationcontroller);
    _animationcontroller.addListener(() {});
    _animationcontroller.forward();
    _animationcontroller.addStatusListener((status) {
      if (status == AnimationStatus.dismissed) {
        if (aimindex == 0) {
          aimindex = 1;
        } else {
          aimindex = 0;
        }
        _animationcontroller.forward();
      }
      if (status == AnimationStatus.completed) {
        Future.delayed(Duration(seconds: 4), () {
          _animationcontroller.reverse();
        });
      }
    });
  }

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
                colors: [
                  Colors.lightBlue[900].withOpacity(0.8),
                  Colors.lightBlue[900].withOpacity(0.3)
                ],
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
                  height: 150,
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
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: AnimatedBuilder(
                    animation: _animationcontroller,
                    builder: (context, child) {
                      return Opacity(
                        opacity: _opacity.value,
                        child: Text(
                          aims[aimindex],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: FloatingActionButton.extended(
                    onPressed: () {},
                    backgroundColor: Colors.teal,
                    label: Text(
                      "Details",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width * 0.90,
                  child: Card(
                    child: Stack(
                      children: <Widget>[
                        PageView(
                          controller: pagecontroller,
                          onPageChanged: (int page) {
                            imagewindowindex = page;
                            if (imagewindowindex == 0) {
                              button1opacity = 0.5;
                              button2opacity = 1;
                              setState(() {});
                            } else if (imagewindowindex == 3) {
                              button1opacity = 1;
                              button2opacity = 0.5;
                              setState(() {});
                            } else {
                              button1opacity = 1;
                              button2opacity = 1;
                              setState(() {});
                            }
                          },
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
                              AnimatedOpacity(
                                opacity: button1opacity,
                                duration: Duration(milliseconds: 300),
                                child: FloatingActionButton(
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
                              ),
                              AnimatedOpacity(
                                opacity: button2opacity,
                                duration: Duration(milliseconds: 300),
                                child: FloatingActionButton(
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
*/
