import 'package:flutter/material.dart';

class contact_us_body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Desktopcontact_uspagebody1();
        } else {
          return Mobilecontact_uspagebody1();
        }
      },
    );
  }
}

class Desktopcontact_uspagebody1 extends StatefulWidget {
  @override
  _Desktopcontact_uspagebody1State createState() => _Desktopcontact_uspagebody1State();
}

class _Desktopcontact_uspagebody1State extends State<Desktopcontact_uspagebody1> {
  double cardwidth = 140, cardheight = 500;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1.5,
      child: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/contact_us2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 3,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.blue[500].withOpacity(0.5),
                  Colors.blue[900]
                ],
                begin: Alignment.bottomLeft,
                end: Alignment.bottomLeft,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 3,
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.04,
                ),
                Container(
                  child: TweenAnimationBuilder(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0,10,0,0),
                      child: Text(
                        "Contact Us",
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    tween: Tween<double>(begin: 0, end: 1),
                    duration: Duration(seconds: 1),
                    builder: (context, value, child) {
                      return Opacity(
                        opacity: value,
                        child: child,
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 2,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50,20,0,0),
                            child: Text(
                              "Tamilnadu Science and Technology Centre - Chennai",
                              style: TextStyle(
                                color: Colors.yellowAccent[100],
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(50,0,200,0),
                            child: Text(
                             "Executive Director\n"
                             "Tamilnadu Science and Technology Centre,\n"
                              "Gandhi Mandapam Road,\n"
                              "Chennai - 600 025.\n"
                              "Phone: 044-24410025, 24915250\n"
                              "E-mail: tnstc.science@gmail.com",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50,40,20,0),
                            child: Text(
                              "Anna Science Centre - Planetarium, Tiruchirappalli",
                              style: TextStyle(
                                color: Colors.yellowAccent[100],
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50,0,270,0),
                            child: Text(
                              "Project Director\n"
                              "Anna Science Centre - Planetarium,\n"
                                  "Pudukkottai Road (Near Airport),\n"
                                  "Tiruchirappalli - 620 007.\n"
                                  "Ph: 0431 - 2332190, 2331921\n"
                                  "E-mail: ascplanetarium@gmail.com",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50,40,230,0),
                            child: Text(
                              "District Science Centre - Vellore",
                              style: TextStyle(
                                color: Colors.yellowAccent[100],
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(50,0,315,0),
                            child: Text(
                              "District Science Officer\n"
                                  "District Science Centre,\n"
                                  "Sathuvachari,\n"
                                  "Vellore - 632 009.\n"
                                  "Ph: 0416 - 2252297\n"
                                  "E-mail: dscvellore@gmail.com",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(65,40,175,0),
                            child: Text(
                              "Regional Science Centre - Coimbatore",
                              style: TextStyle(
                                color: Colors.yellowAccent[100],
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(65,0,290,0),
                            child: Text(
                              "District Science Officer\n"
                                  "Regional Science Centre,\n"
                                  "Codissia road,\n"
                                  "Coimbatore - 641 014.\n"
                                  "Ph: 0422 - 2570325, 0422-2573025\n"
                                  "E-mail: rsc.kovai14@gmail.com",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Mobilecontact_uspagebody1 extends StatefulWidget {
  @override
  _Mobilecontact_uspagebody1State createState() => _Mobilecontact_uspagebody1State();
}

class _Mobilecontact_uspagebody1State extends State<Mobilecontact_uspagebody1> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}




