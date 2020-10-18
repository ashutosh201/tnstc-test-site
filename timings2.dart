import 'package:flutter/material.dart';

class Timing2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopTiming2();
        } else {
          return MobileTiming2();
        }
      },
    );
  }
}

class DesktopTiming2 extends StatefulWidget {

  @override
  _DesktopTiming2State createState() => _DesktopTiming2State();
}

class _DesktopTiming2State extends State<DesktopTiming2> {

  Widget timings2data() => DataTable(
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
          padding: const EdgeInsets.fromLTRB(0,0,0,0),
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
          DataCell(Text("10.30 a.m.              11.45 a.m.")),
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
          DataCell(Text("1.00 p.m.                2.15 p.m.")),
        ],
      ),
      DataRow(
        cells: <DataCell>[
          DataCell(Text("")),
          DataCell(Text("3.30 p.m.")),

        ],
      ),
      DataRow(
        cells: <DataCell>[
          DataCell(Text("")),
          DataCell(Text("4.45 p.m.")),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.9,
      child: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.9,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/contact_us2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.9,
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0,20,0,20),
                    child: Text(
                      "ANNA SCIENCE CENTRE - PLANETARIUM, TIRUCHIRAPPALLI - 620007",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w900,
                          color: Colors.black),
                    ),
                  ),
                ),
                Row(
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.fromLTRB(10,0,0,0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Card(
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  height: MediaQuery.of(context).size.height * 0.6,
                                  width: MediaQuery.of(context).size.width * 0.5,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('assets/annascience.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: timings2data(),
                      ),
                    ]
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MobileTiming2 extends StatefulWidget {
  @override
  _MobileTiming2State createState() => _MobileTiming2State();
}

class _MobileTiming2State extends State<MobileTiming2> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


