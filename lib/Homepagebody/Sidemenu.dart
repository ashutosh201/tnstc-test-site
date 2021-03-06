import 'package:flutter/material.dart';
import 'package:tnstc_test_site/Pages/Contact.dart';
import 'package:tnstc_test_site/Pages/Development.dart';
import 'package:tnstc_test_site/Pages/Endowments.dart';
import 'package:tnstc_test_site/Pages/Library.dart';
import 'package:tnstc_test_site/Pages/Outreach.dart';
import 'package:tnstc_test_site/Pages/about.dart';
import 'package:tnstc_test_site/Pages/admin.dart';
import 'package:tnstc_test_site/Pages/feestructure.dart';
import 'package:tnstc_test_site/Pages/timings.dart';
import 'package:wiredash/wiredash.dart';

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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => About()));
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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Timing()));
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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ContactPage()));
          },
        ),
        ListTile(
          leading: Icon(
            Icons.school,
            color: Colors.teal,
            size: 35,
          ),
          title: Text("Library"),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Library()));
          },
        ),
        ListTile(
          leading: Icon(
            Icons.people,
            color: Colors.teal,
            size: 35,
          ),
          title: Text("Administration"),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Admin()));
          },
        ),
        ListTile(
          leading: Icon(
            Icons.brightness_3,
            color: Colors.teal,
            size: 35,
          ),
          title: Text("Astronomical events"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(
            Icons.timeline,
            color: Colors.teal,
            size: 35,
          ),
          title: Text("Outreach activities"),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Outreach()));
          },
        ),
        ListTile(
          leading: Icon(
            Icons.gesture,
            color: Colors.teal,
            size: 35,
          ),
          title: Text("Development activities"),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Development()));
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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Endowments()));
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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Feestructure()));
          },
        ),
      ],
    );
  }
}

class MobileHomeSidemenu extends StatefulWidget {
  @override
  _MobileHomeSidemenuState createState() => _MobileHomeSidemenuState();
}

class _MobileHomeSidemenuState extends State<MobileHomeSidemenu> {
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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => About()));
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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Timing()));
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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ContactPage()));
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
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Endowments()));
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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Feestructure()));
          },
        ),
      ],
    );
  }
}

class DesktopSidemenu extends StatefulWidget {
  @override
  _DesktopSidemenuState createState() => _DesktopSidemenuState();
}

class _DesktopSidemenuState extends State<DesktopSidemenu> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 70,
        ),
        ListTile(
          leading: Icon(
            Icons.school,
            color: Colors.white,
            size: 35,
          ),
          title: Text(
            "Library",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          hoverColor: Colors.lightBlue[900],
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Library()));
          },
        ),
        ListTile(
          leading: Icon(
            Icons.people,
            color: Colors.white,
            size: 35,
          ),
          title: Text(
            "Administration",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          hoverColor: Colors.lightBlue[900],
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Admin()));
          },
        ),
        ListTile(
          leading: Icon(
            Icons.timeline,
            color: Colors.white,
            size: 35,
          ),
          title: Text(
            "Outreach activities",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          hoverColor: Colors.lightBlue[900],
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Outreach()));
          },
        ),
        ListTile(
          leading: Icon(
            Icons.gesture,
            color: Colors.white,
            size: 35,
          ),
          title: Text(
            "Development activities",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          hoverColor: Colors.lightBlue[900],
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Development()));
          },
        ),
        ListTile(
          leading: Icon(
            Icons.brightness_3,
            color: Colors.white,
            size: 35,
          ),
          title: Text(
            "Astronomical events",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          hoverColor: Colors.lightBlue[900],
          onTap: () {},
        ),
        ListTile(
          leading: Icon(
            Icons.attach_money,
            color: Colors.white,
            size: 35,
          ),
          title: Text(
            "Endowments",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          hoverColor: Colors.lightBlue[900],
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Endowments()));
          },
        ),
        ListTile(
          leading: Icon(
            Icons.feedback,
            color: Colors.white,
            size: 35,
          ),
          title: Text(
            "Feedback",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          hoverColor: Colors.lightBlue[900],
          onTap: () {
            Wiredash.of(context).show();
          },
        ),
      ],
    );
  }
}
