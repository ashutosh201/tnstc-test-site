import 'package:flutter/material.dart';

class Feestructure1 extends StatefulWidget {
  @override
  _Feestructure1State createState() => _Feestructure1State();
}

class _Feestructure1State extends State<Feestructure1> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopFeestructure1();
        } else {
          return MobileFeestructure1();
        }
      },
    );
  }
}

class DesktopFeestructure1 extends StatefulWidget {
  @override
  _DesktopFeestructure1State createState() => _DesktopFeestructure1State();
}

class _DesktopFeestructure1State extends State<DesktopFeestructure1> {
  Widget feestructure1data() => DataTable(
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
              "Rs30",
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
            "Rs15",
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
      DataRow(
        cells: <DataCell>[
          DataCell(Text(
            "",
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w900,
                color: Colors.black),
          )),
          DataCell(Text(
            "Planeterium",
            style: TextStyle(
            fontSize: 17.0,
            fontWeight: FontWeight.w900,
            color: Colors.black),
            )),
          DataCell(Text(
            "3D Science Movie",
            style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w900,
                color: Colors.black),
          )),
          DataCell(Text(
            "Science on A Sphere",
            style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w900,
                color: Colors.black),
          )),
        ],
      ),
      DataRow(
        cells: <DataCell>[
          DataCell(Text(
            "Adult",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w900,
            ),
          )),
          DataCell(Text(
            "Rs30",
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
          DataCell(Text(
            "Rs20",
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
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
            "Rs15",
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
          DataCell(Text(
            "Rs15",
            style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          )),
        ],
      ),
      DataRow(
        cells: <DataCell>[
          DataCell(Text(
            "",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w900,
            ),
          )),
          DataCell(Text(
            "Package",
            style: TextStyle(
              fontSize: 17.0,
              fontWeight: FontWeight.w900,
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
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          )),
        ],
      ),

      DataRow(
        cells: <DataCell>[
          DataCell(Text(
            "Adult",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w900,
            ),
          )),
          DataCell(Text(
            "Rs60",
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
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
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
            "Rs30",
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
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
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
                child: feestructure1data(),
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

class MobileFeestructure1 extends StatefulWidget {
  @override
  _MobileFeestructure1State createState() => _MobileFeestructure1State();
}

class _MobileFeestructure1State extends State<MobileFeestructure1> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

