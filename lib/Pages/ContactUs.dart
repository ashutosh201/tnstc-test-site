import 'package:flutter/material.dart';
import 'package:tnstc_test_site/Navbar/Navbar.dart';
import 'package:tnstc_test_site/Pages/ContactUsBody.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            children: <Widget>[
              ContactUsBody(),
              Divider(
                height: 40,
                thickness: 2,
                indent: MediaQuery.of(context).size.width * 0.2,
                endIndent: MediaQuery.of(context).size.width * 0.2,
                color: Colors.grey,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: SizedBox(
                      width: 100,
                      height: 40,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        child: Text(
                          "Home",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                        color: Colors.blue.withOpacity(0.7),
                      ),
                    ),
                  ),
                ],
              ),
            ],
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
