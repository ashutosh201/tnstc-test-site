import 'package:flutter/material.dart';

class Timing4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopTiming4();
        } else {
          return MobileTiming4();
        }
      },
    );
  }
}

//REGIONAL SCIENCE CENTRE, COIMBATORE - 641014

class DesktopTiming4 extends StatefulWidget {
  @override
  _DesktopTiming4State createState() => _DesktopTiming4State();
}

class _DesktopTiming4State extends State<DesktopTiming4> {
  Widget timings4data() => DataTable(
        columns: [
          DataColumn(
            label: Text(
              "Science Exhibition",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
            ),
          ),
        ],
        rows: <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text(
                "Halls of Science & Technology                10.00 a.m to 05.45 p.m",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                ),
              )),
            ],
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              "REGIONAL SCIENCE CENTRE, COIMBATORE - 641014",
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 0.5,
                padding: EdgeInsets.only(left: 20),
                child: Card(
                  elevation: 20,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Image.asset(
                      'assets/windowimage4.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                child: timings4data(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MobileTiming4 extends StatefulWidget {
  @override
  _MobileTiming4State createState() => _MobileTiming4State();
}

class _MobileTiming4State extends State<MobileTiming4> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
