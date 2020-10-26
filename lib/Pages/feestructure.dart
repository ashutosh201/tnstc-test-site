import 'package:flutter/material.dart';
import 'package:tnstc_test_site/Navbar/Navbar.dart';
import 'package:tnstc_test_site/Pages/feestructure/feestructure1.dart';
import 'package:tnstc_test_site/Pages/feestructure/feestructure2.dart';
import 'package:tnstc_test_site/Pages/feestructure/feestructure3.dart';
import 'package:tnstc_test_site/Pages/feestructure/feestructure4.dart';

class Feestructure extends StatefulWidget {
  @override
  _FeestructureState createState() => _FeestructureState();
}

class _FeestructureState extends State<Feestructure> {
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
                            " Fee Structure ",
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
                Feestructure1(),
                Divider(
                  height: 150,
                  thickness: 2,
                  indent: MediaQuery.of(context).size.width * 0.2,
                  endIndent: MediaQuery.of(context).size.width * 0.2,
                  color: Colors.grey,
                ),
                Feestructure2(),
                Divider(
                  height: 150,
                  thickness: 2,
                  indent: MediaQuery.of(context).size.width * 0.2,
                  endIndent: MediaQuery.of(context).size.width * 0.2,
                  color: Colors.grey,
                ),
                Feestructure3(),
                Divider(
                  height: 150,
                  thickness: 2,
                  indent: MediaQuery.of(context).size.width * 0.2,
                  endIndent: MediaQuery.of(context).size.width * 0.2,
                  color: Colors.grey,
                ),
                Feestructure4(),
                Divider(
                  height: 150,
                  thickness: 2,
                  indent: MediaQuery.of(context).size.width * 0.2,
                  endIndent: MediaQuery.of(context).size.width * 0.2,
                  color: Colors.grey,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0, 0, 30),
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Text(
                      "Home",
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
          Container(
            width: MediaQuery.of(context).size.width,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              margin: EdgeInsets.zero,
              elevation: 10,
              color: Colors.blueGrey[600].withOpacity(0.8),
              child: DesktopNavbar(),
            ),
          ),
        ],
      ),
    );
  }
}
