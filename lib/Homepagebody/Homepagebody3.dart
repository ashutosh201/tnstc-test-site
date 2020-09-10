import 'package:flutter/material.dart';
import 'package:tnstc_test_site/Data/Data.dart';

class Homepagebody3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopHomepagebody3();
        } else {
          return MobileHomepagebody3();
        }
      },
    );
  }
}

class DesktopHomepagebody3 extends StatefulWidget {
  @override
  _DesktopHomepagebody3State createState() => _DesktopHomepagebody3State();
}

class _DesktopHomepagebody3State extends State<DesktopHomepagebody3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 350,
      color: Colors.teal[300].withOpacity(0.7),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: <Widget>[
              InkWell(
                hoverColor: Colors.blue,
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Icon(
                        optioniconlist[0],
                        color: Colors.white,
                        size: 100,
                      ),
                      Text(
                        optionlist[0],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  height: 200,
                  width: 200,
                ),
                onTap: () {},
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                hoverColor: Colors.blue,
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Icon(
                        optioniconlist[1],
                        color: Colors.white,
                        size: 100,
                      ),
                      Text(
                        optionlist[1],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  height: 200,
                  width: 200,
                ),
                onTap: () {},
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                hoverColor: Colors.blue,
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Icon(
                        optioniconlist[2],
                        color: Colors.white,
                        size: 100,
                      ),
                      Text(
                        "Astronomical",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        "events",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  height: 200,
                  width: 200,
                ),
                onTap: () {},
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                hoverColor: Colors.blue,
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Icon(
                        optioniconlist[3],
                        color: Colors.white,
                        size: 100,
                      ),
                      Text(
                        "Outreach",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        "activities",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  height: 200,
                  width: 200,
                ),
                onTap: () {},
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                hoverColor: Colors.blue,
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Icon(
                        optioniconlist[4],
                        color: Colors.white,
                        size: 100,
                      ),
                      Text(
                        "Development",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                      Text(
                        "activities",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  height: 200,
                  width: 200,
                ),
                onTap: () {},
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                hoverColor: Colors.blue,
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Icon(
                        optioniconlist[5],
                        color: Colors.white,
                        size: 100,
                      ),
                      Text(
                        optionlist[5],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  height: 200,
                  width: 200,
                ),
                onTap: () {},
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                hoverColor: Colors.blue,
                child: Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25,
                      ),
                      Icon(
                        optioniconlist[6],
                        color: Colors.white,
                        size: 100,
                      ),
                      Text(
                        optionlist[6],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  height: 200,
                  width: 200,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MobileHomepagebody3 extends StatefulWidget {
  @override
  _MobileHomepagebody3State createState() => _MobileHomepagebody3State();
}

class _MobileHomepagebody3State extends State<MobileHomepagebody3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                  InkWell(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.teal[300],
                          width: 4,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.08,
                          ),
                          Icon(
                            optioniconlist[0],
                            color: Colors.teal[300],
                            size: MediaQuery.of(context).size.width * 0.2,
                          ),
                          Text(
                            optionlist[0],
                            style: TextStyle(
                              color: Colors.teal[300],
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  InkWell(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.teal[300],
                          width: 4,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.08,
                          ),
                          Icon(
                            optioniconlist[1],
                            color: Colors.teal[300],
                            size: MediaQuery.of(context).size.width * 0.2,
                          ),
                          Text(
                            optionlist[1],
                            style: TextStyle(
                              color: Colors.teal[300],
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.02,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                  InkWell(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.teal[300],
                          width: 4,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.08,
                          ),
                          Icon(
                            optioniconlist[2],
                            color: Colors.teal[300],
                            size: MediaQuery.of(context).size.width * 0.2,
                          ),
                          Text(
                            "Astronomical",
                            style: TextStyle(
                              color: Colors.teal[300],
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            "events",
                            style: TextStyle(
                              color: Colors.teal[300],
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  InkWell(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.teal[300],
                          width: 4,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.08,
                          ),
                          Icon(
                            optioniconlist[3],
                            color: Colors.teal[300],
                            size: MediaQuery.of(context).size.width * 0.2,
                          ),
                          Text(
                            "Outreach",
                            style: TextStyle(
                              color: Colors.teal[300],
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            "activities",
                            style: TextStyle(
                              color: Colors.teal[300],
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.02,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.04,
                  ),
                  InkWell(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.teal[300],
                          width: 4,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.08,
                          ),
                          Icon(
                            optioniconlist[4],
                            color: Colors.teal[300],
                            size: MediaQuery.of(context).size.width * 0.2,
                          ),
                          Text(
                            "Development",
                            style: TextStyle(
                              color: Colors.teal[300],
                              fontSize: 25,
                            ),
                          ),
                          Text(
                            "activities",
                            style: TextStyle(
                              color: Colors.teal[300],
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.02,
                  ),
                  InkWell(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.teal[300],
                          width: 4,
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.08,
                          ),
                          Icon(
                            optioniconlist[6],
                            color: Colors.teal[300],
                            size: MediaQuery.of(context).size.width * 0.2,
                          ),
                          Text(
                            optionlist[6],
                            style: TextStyle(
                              color: Colors.teal[300],
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
