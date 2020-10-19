import 'package:flutter/material.dart';

class Timing3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopTiming3();
        } else {
          return MobileTiming3();
        }
      },
    );
  }
}

class DesktopTiming3 extends StatefulWidget {
  @override
  _DesktopTiming3State createState() => _DesktopTiming3State();
}

class _DesktopTiming3State extends State<DesktopTiming3> {
  Widget timings3data() => DataTable(
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
              "DISTRICT SCIENCE CENTRE, VELLORE - 632009",
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                child: timings3data(),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width * 0.5,
                padding: EdgeInsets.only(right: 20),
                child: Card(
                  elevation: 20,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Image.asset(
                      'assets/windowimage3.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MobileTiming3 extends StatefulWidget {
  @override
  _MobileTiming3State createState() => _MobileTiming3State();
}

class _MobileTiming3State extends State<MobileTiming3> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
