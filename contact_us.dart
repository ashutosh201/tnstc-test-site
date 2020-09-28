import 'package:flutter/material.dart';
import 'Navbar/Navbar.dart';
import 'package:tnstc_test_site/contact_us_body.dart';

class contact_us extends StatefulWidget {
  @override
  _contact_usState createState() => _contact_usState();
}

class _contact_usState extends State<contact_us> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Navbar(),
          contact_us_body(),
          Divider(
            height: 50,
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.2,
            endIndent: MediaQuery.of(context).size.width * 0.2,
            color: Colors.grey,
          ),
        ]
      ),
    );
  }
}

