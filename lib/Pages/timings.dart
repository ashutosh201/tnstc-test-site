import 'package:flutter/material.dart';
import 'package:tnstc_test_site/Navbar/Navbar.dart';
import 'package:tnstc_test_site/Pages/timings1.dart';
import 'package:tnstc_test_site/Pages/timings2.dart';
import 'package:tnstc_test_site/Pages/timings3.dart';
import 'package:tnstc_test_site/Pages/timings4.dart';

class Timing extends StatefulWidget {
  @override
  _TimingState createState() => _TimingState();
}

class _TimingState extends State<Timing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 400,
                      child: Image.asset(
                        'assets/homepagebackground4.jpg',
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
                            " Timings ",
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
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 100,
                ),
                Timing1(),
                Divider(
                  height: 150,
                  thickness: 2,
                  indent: MediaQuery.of(context).size.width * 0.2,
                  endIndent: MediaQuery.of(context).size.width * 0.2,
                  color: Colors.grey,
                ),
                Timing2(),
                Divider(
                  height: 150,
                  thickness: 2,
                  indent: MediaQuery.of(context).size.width * 0.2,
                  endIndent: MediaQuery.of(context).size.width * 0.2,
                  color: Colors.grey,
                ),
                Timing3(),
                Divider(
                  height: 150,
                  thickness: 2,
                  indent: MediaQuery.of(context).size.width * 0.2,
                  endIndent: MediaQuery.of(context).size.width * 0.2,
                  color: Colors.grey,
                ),
                Timing4(),
                SizedBox(
                  height: 250,
                )
              ],
            ),
          ),
          DesktopNavbar(),
        ],
      ),
    );
  }
}
