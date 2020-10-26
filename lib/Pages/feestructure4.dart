import 'package:flutter/material.dart';

class Feestructure4 extends StatefulWidget {
  @override
  _Feestructure4State createState() => _Feestructure4State();
}

class _Feestructure4State extends State<Feestructure4> {

  Widget feestructure4data() => DataTable(
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
          "Entry Fee",
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
            "Package(Science Centre and 3D)",
            style: TextStyle(
                fontSize: 17.0,
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
              "Rs20",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          )),
          DataCell(Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Text(
              "Rs30",
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
          DataCell(Text(
            "Child",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w900,
            ),
          )),
          DataCell(Text(
            "Rs10",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
            ),
          )),
          DataCell(Text(
            "Rs20",
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
                child: feestructure4data(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
