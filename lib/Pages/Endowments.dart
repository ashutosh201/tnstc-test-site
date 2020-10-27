import 'package:flutter/material.dart';
import 'package:tnstc_test_site/Homepagebody/Sidemenu.dart';
import 'package:tnstc_test_site/Navbar/Navbar.dart';

class Endowments extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopEndowments();
        } else {
          return MobileEndowments();
        }
      },
    );
  }
}

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class DesktopEndowments extends StatefulWidget {
  @override
  _DesktopEndowmentsState createState() => _DesktopEndowmentsState();
}

class _DesktopEndowmentsState extends State<DesktopEndowments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height,
                color: Colors.teal.withOpacity(0.9),
                child: DesktopSidemenu(),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 400,
                            child: Image.asset(
                              'assets/homepagebackground4.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 400,
                            color: Colors.black.withOpacity(0.7),
                            child: Center(
                              child: Container(
                                child: Text(
                                  " Endowments ",
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 5,
                                    color: Colors.teal,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.1),
                          child: Card(
                            elevation: 20,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.05),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 70,
                                  ),
                                  Text(
                                    "DR.C.P.Gopalaraman Endowment Fund",
                                    style: TextStyle(
                                      color: Colors.lightBlue[900],
                                      fontSize: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "The organising committee of the National Level Forum on Ultra High Vacuum Techniques and Surface Analytical Instrumentation instituted an endowment in the name of Dr.C.P.Gopalaraman, Former Executive Director of the Tamilnadu Science and Technology Centre with an objective to popularise science and technology by conducting seminars, workshops, popular lectures etc., for the benefit of the students community every year, with a seed money of Rs.20,000/-. On the request made by the Tamilnadu Science and Technology Centre, the Indian Society of Scientific Glassblowers, Chennai have also contributed a modest donation of Rs.20,000/- towards Dr.C.P.Gopalaraman Endowment Fund on 29.03.1999. The accrued interest are being utilised for organising programmes every year on 3rd September, the day Dr.C.P.Gopalaraman, former Executive Director is remembered for the great service rendered by him to the Society.",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Text(
                                    "Endowments of DR.(MRS) Gowri Chandrakasan and PROF.P.Devdas",
                                    style: TextStyle(
                                      color: Colors.lightBlue[900],
                                      fontSize: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Endorsing the services rendered by the Centre, Dr.(Tmt) Gowri Chandrakasan, Deputy Director (Retired), Central Leather Research Institute, Chennai has contributed a token sum of Rs.10,000/- towards endowment to be created in the name of Dr.(Tmt) Gowri Chandrakasan. Well-wishers and family members of Prof.P.Devadas, President, TANASTRO have contributed a token sum of Rs.11,000/- towards creation of an endowment in the name of Prof.P.Devadas.Utilising the interest accrued from the respective deposits, science popularizing programmes will be conducted on December 05, as Dr.Gowri Chandrakasan Endowment Day and on June 09, as Prof.Devadas Endowment.",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 70,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          DesktopNavbar(),
        ],
      ),
    );
  }
}

class MobileEndowments extends StatefulWidget {
  @override
  _MobileEndowmentsState createState() => _MobileEndowmentsState();
}

class _MobileEndowmentsState extends State<MobileEndowments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldState,
      drawer: Theme(
        data: ThemeData.dark(),
        child: Drawer(
          child: Sidemenu(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        child: Icon(Icons.format_list_bulleted),
        onPressed: () {
          _scaffoldState.currentState.openDrawer();
        },
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  child: Image.asset(
                    'assets/homepagebackground4.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 400,
                  color: Colors.black.withOpacity(0.7),
                  child: Center(
                    child: Container(
                      child: Text(
                        " Endowments ",
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 5,
                          color: Colors.teal,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
              child: Card(
                elevation: 20,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        "DR.C.P.Gopalaraman Endowment Fund",
                        style: TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "The organising committee of the National Level Forum on Ultra High Vacuum Techniques and Surface Analytical Instrumentation instituted an endowment in the name of Dr.C.P.Gopalaraman, Former Executive Director of the Tamilnadu Science and Technology Centre with an objective to popularise science and technology by conducting seminars, workshops, popular lectures etc., for the benefit of the students community every year, with a seed money of Rs.20,000/-. On the request made by the Tamilnadu Science and Technology Centre, the Indian Society of Scientific Glassblowers, Chennai have also contributed a modest donation of Rs.20,000/- towards Dr.C.P.Gopalaraman Endowment Fund on 29.03.1999. The accrued interest are being utilised for organising programmes every year on 3rd September, the day Dr.C.P.Gopalaraman, former Executive Director is remembered for the great service rendered by him to the Society.",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Endowments of DR.(MRS) Gowri Chandrakasan and PROF.P.Devdas",
                        style: TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Endorsing the services rendered by the Centre, Dr.(Tmt) Gowri Chandrakasan, Deputy Director (Retired), Central Leather Research Institute, Chennai has contributed a token sum of Rs.10,000/- towards endowment to be created in the name of Dr.(Tmt) Gowri Chandrakasan. Well-wishers and family members of Prof.P.Devadas, President, TANASTRO have contributed a token sum of Rs.11,000/- towards creation of an endowment in the name of Prof.P.Devadas.Utilising the interest accrued from the respective deposits, science popularizing programmes will be conducted on December 05, as Dr.Gowri Chandrakasan Endowment Day and on June 09, as Prof.Devadas Endowment.",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
