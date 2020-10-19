import 'package:flutter/material.dart';

class Timing1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopTiming1();
        } else {
          return MobileTiming1();
        }
      },
    );
  }
}

class DesktopTiming1 extends StatefulWidget {
  @override
  _DesktopTiming1State createState() => _DesktopTiming1State();
}

class _DesktopTiming1State extends State<DesktopTiming1> {
  Widget timings1data() => DataTable(
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
          DataColumn(
            label: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Text(
                "Planetarium Programme",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
            ),
          ),
        ],
        rows: <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text(
                "Halls of Science & Technology",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                ),
              )),
              DataCell(Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Text(
                  "English              Tamil",
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("10.00 a.m to 05.45 p.m")),
              DataCell(Text("10.45 a.m.              12.00 p.m.")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text(
                "",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                ),
              )),
              DataCell(Text("1.15 p.m.                2.30 p.m.")),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text("")),
              DataCell(Text("3.45 p.m.                4.30 p.m.")),
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
              "PERIYAR SCIENCE & TECHNOLOGY CENTRE AND B.M BIRLA PLANETARIUM, CHENNAI.",
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
                child: timings1data(),
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
                      'assets/windowimage1.jpg',
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

class MobileTiming1 extends StatefulWidget {
  @override
  _MobileTiming1State createState() => _MobileTiming1State();
}

class _MobileTiming1State extends State<MobileTiming1> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
