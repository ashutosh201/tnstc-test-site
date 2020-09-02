import 'package:flutter/material.dart';
import 'package:tnstc_test_site/Homepagebody/Homepagebody.dart';
import 'Navbar/Navbar.dart';
import 'Data/Data.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double cardwidth = 383, cardheight = 420;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Navbar(),
          Homepagebody1(),
          Divider(
            height: 50,
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.2,
            endIndent: MediaQuery.of(context).size.width * 0.2,
            color: Colors.grey,
          ),
          Container(
            height: cardheight,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  height: cardheight,
                  width: cardwidth,
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 300,
                          width: cardwidth,
                          child: Image.asset(
                            'assets/windowimage${index + 1}.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            centrename[index],
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 270, 0),
                          child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              "View",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            color: Colors.blue.withOpacity(0.7),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Divider(
            height: 50,
            thickness: 2,
            indent: MediaQuery.of(context).size.width * 0.2,
            endIndent: MediaQuery.of(context).size.width * 0.2,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
