import 'package:flutter/material.dart';

class Feestructure2 extends StatefulWidget {
  @override
  _Feestructure2State createState() => _Feestructure2State();
}

class _Feestructure2State extends State<Feestructure2> {

  Widget feestructure2data() => DataTable(
    columns: [
      DataColumn(
        label: Text(
          "",
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w900,
              color: Colors.black),
        ),
      ),
      DataColumn(
        label: Text(
          "Package(Planetarium, Science Centre and 3D)",
          style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.w900,
              color: Colors.black),
        ),
      ),
      DataColumn(
        label: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Text(
            "",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                color: Colors.black),
          ),
        ),
      ),
      DataColumn(
        label: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Text(
            "",
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
            "Adult",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w900,
            ),
          )),
          DataCell(Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              "Rs45",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          )),
          DataCell(Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              "",
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          )),
          DataCell(Text(
            "",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                color: Colors.black),
          )),
        ],
      ),
      DataRow(
        cells: <DataCell>[
          DataCell(Text(
            "Child",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w900,
            ),
          )),
          DataCell(Text(
            "Rs25",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
            ),
          )),
          DataCell(Text(
            "",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
            ),
          )),
          DataCell(Text(
            "",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w900,
                color: Colors.black),
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
              "ANNA SCIENCE CENTRE - PLANETARIUM, TIRUCHIRAPPALLI - 620007",
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
                      'assets/windowimage2.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                child: feestructure2data(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
