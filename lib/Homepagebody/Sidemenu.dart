import 'package:flutter/material.dart';

class Sidemenu extends StatefulWidget {
  @override
  _SidemenuState createState() => _SidemenuState();
}

class _SidemenuState extends State<Sidemenu> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 50,
        ),
        ListTile(
          leading: Icon(
            Icons.info,
            color: Colors.teal,
            size: 35,
          ),
          title: Text(
            "About TNSTC",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(
            Icons.access_time,
            color: Colors.teal,
            size: 35,
          ),
          title: Text("Timings"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(
            Icons.phone_in_talk,
            color: Colors.teal,
            size: 35,
          ),
          title: Text("Contact Us"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(
            Icons.attach_money,
            color: Colors.teal,
            size: 35,
          ),
          title: Text("Endowments"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(
            Icons.monetization_on,
            color: Colors.teal,
            size: 35,
          ),
          title: Text("Fee structure"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
