import 'package:flutter/material.dart';
import 'package:tnstc_test_site/Homepagebody/Sidemenu.dart';
import 'package:tnstc_test_site/Navbar/Navbar.dart';

class Outreach extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopOutreach();
        } else {
          return MobileOutreach();
        }
      },
    );
  }
}

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class DesktopOutreach extends StatefulWidget {
  @override
  _DesktopOutreachState createState() => _DesktopOutreachState();
}

class _DesktopOutreachState extends State<DesktopOutreach> {
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
                                  " Outreach Activities ",
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
                                    "Activities for School Students",
                                    style: TextStyle(
                                      color: Colors.lightBlue[900],
                                      fontSize: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Tamilnadu Science and Technology Centre, in coordination with Department of Science and Technology, Government of India, is implementing INSPIRE Award programme in Tamilnadu with the kind cooperation of the Department of School Education. Innovation in Science Pursuit for Inspired Research (INSPIRE) is a National Programme implemented for attraction of talent amongst students to study science and pursue career with research. In order to seed and experience the joy of innovation, throughout the country, every year school children in the age-group of 10 to 15 years i.e., 6th to 10th standards are being identified for the INSPIRE Award",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Tamilnadu has over 30,000 schools. There will several hundreds of students with Science talents. To recognize them and to motivate them Science Exhibition Contests are being conducted throughout the State every year by Tamilnadu Science and Technology Centre.",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "In addition to the conduct of Science exhibition contests, Science Talent Search tests are also conducted throughout the State by networking service minded schools. Every year the network of schools are organizing the tests.",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "The Ramanujan Mathematical Talent Search Contests conducted every year by Tamilnadu Science and Technology Centre for the past 10 years for the school students is a roaring success in Chennai.",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Text(
                                    "College Level Activities",
                                    style: TextStyle(
                                      color: Colors.lightBlue[900],
                                      fontSize: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "The number of students proceeding to carry out doctoral research work after their post graduation is very low. Many of the students are not aware of the avenues available to them in research fields. Some are not aware of the Institutions offering the courses. Tamilnadu Science and Technology Centre helps the students by organizing career counseling programmes. These programmes helps students to find good jobs also. In these programmes, sessions explaining the students to learn about the expectations of the prospective employers, personality development and many more also taught.",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "To enhance their practical skills, workshops on computer skills, robotics, aero modeling, microprocessor programming, etc are taught. Through the network of schools and colleges the students are invited for the 'meet the scientist' programmes, that are being organized periodically.",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Text(
                                    "Movements for Enhancing Teacher Resources",
                                    style: TextStyle(
                                      color: Colors.lightBlue[900],
                                      fontSize: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Several School teachers, with interest in learning new techniques in Science Teaching, are provided with training periodically. To do this a set of resource persons from Tamilnadu Science and Technology Centre and Professors of Colleges and IIT travel across the State. Modern gadgets available for teaching are provided to them, training on preparing their own teaching aids, practices in astronomy and many more are provided.",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Exclusive Programmes on Maths Teaching with simple teaching aids are organized to train teachers to remove phobia on Maths learning from the students at elementary school level.",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Voice Care for Teachers, Training the Teachers to organize Sky Watch Programmes during rare celestial events, workshops on puppetry are some of the many activities intended for the teachers.",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Text(
                                    "Activities for the Special Children and General Public Planetarium Show for the Hearing Impaired",
                                    style: TextStyle(
                                      color: Colors.lightBlue[900],
                                      fontSize: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "In order to bring cheers to the life of hearing impaired children, and to provide education on astronomy, B. M. Birla Planetarium of Tamilnadu Science and Technology Centre, Chennai has developed a planetarium show exclusively for them.",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "For this Programme a simple script was developed and it was interpreted by a sign language interpreter. It was filmed and was projected using a LCD projector in a corner of the planetarium dome. After the presentation of each small paragraphs of the script, the appropriate animation or picture or constellation or celestial navigation or special effect presentation were shown.",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Text(
                                    "Science Programmes for the Disabled",
                                    style: TextStyle(
                                      color: Colors.lightBlue[900],
                                      fontSize: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "Tamilnadu Science and Technology Centre is organising spend-a-day in science centre programme for the Hearing Impaired persons. A few sign language interpreters are being invited to accompany the students during the programmes. Every gallery has a write-up in Braille explaining the content of the science gallery.",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Text(
                                    "Programmes for the Home makers",
                                    style: TextStyle(
                                      color: Colors.lightBlue[900],
                                      fontSize: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "The development of the country depends on the attitude and the activities of the women who look after the needs of the every member of the family. Children spend long times intimately with the mother in the home. If the mother is empowered with scientific awareness then the children also will have brighter knowledge. According to Psychological studies environment plays an important role. Tamilnadu Science and Technology Centre organises Programmes for the Homemakers periodically. By way of doing so, they are being provided with methods of earning money also. The waste management methods, producing bio-compost , vermiculture, home gardening etc are also being taught.",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Text(
                                    "Programmes for the family-groups",
                                    style: TextStyle(
                                      color: Colors.lightBlue[900],
                                      fontSize: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "The knowledge development of a child will normally be closely monitored by their relatives. The parents and grand parents know the behaviour and the knowledge level of the child in the residence. However, their performance in a group and in their school and the comparison with their peer groups will largely be unknown to them. The family science learning programme gives the family an opportunity to understand the standard of the children and enables them to effect ways to improve. Whole-day programmes are being devised with combination of subjects and Psychological evaluation of the students by a professional Psychologist.",
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Text(
                                    "Programmes for the Self-Help Groups and Village Heads",
                                    style: TextStyle(
                                      color: Colors.lightBlue[900],
                                      fontSize: 30,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text(
                                    "In the state of Tamilnadu Women Self Help groups are very active and are helpful to the society in many ways. Tamilnadu Science and Technology Centre organises exclusive programmes to them in order to train them in various skills. In addition, the village heads are important channels to transfer the government grants and the important announcements and the messages intended for the farming community. While organising the programmes for the Village heads we have seen the enthusiasm and the motivation among them to help the people of their region. Professionals from various research institutions like MS Swaminathan Research Foundation (MSSRF), IIT-Madras, CPR Environmental Foundation, etc and Experts from leading farms used to interact with the participants.",
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

class MobileOutreach extends StatefulWidget {
  @override
  _MobileOutreachState createState() => _MobileOutreachState();
}

class _MobileOutreachState extends State<MobileOutreach> {
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
                      height: 120,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            " Outreach ",
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            " Activities ",
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
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
                        "Activities for School Students",
                        style: TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Tamilnadu Science and Technology Centre, in coordination with Department of Science and Technology, Government of India, is implementing INSPIRE Award programme in Tamilnadu with the kind cooperation of the Department of School Education. Innovation in Science Pursuit for Inspired Research (INSPIRE) is a National Programme implemented for attraction of talent amongst students to study science and pursue career with research. In order to seed and experience the joy of innovation, throughout the country, every year school children in the age-group of 10 to 15 years i.e., 6th to 10th standards are being identified for the INSPIRE Award",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Tamilnadu has over 30,000 schools. There will several hundreds of students with Science talents. To recognize them and to motivate them Science Exhibition Contests are being conducted throughout the State every year by Tamilnadu Science and Technology Centre.",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "In addition to the conduct of Science exhibition contests, Science Talent Search tests are also conducted throughout the State by networking service minded schools. Every year the network of schools are organizing the tests.",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "The Ramanujan Mathematical Talent Search Contests conducted every year by Tamilnadu Science and Technology Centre for the past 10 years for the school students is a roaring success in Chennai.",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "College Level Activities",
                        style: TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "The number of students proceeding to carry out doctoral research work after their post graduation is very low. Many of the students are not aware of the avenues available to them in research fields. Some are not aware of the Institutions offering the courses. Tamilnadu Science and Technology Centre helps the students by organizing career counseling programmes. These programmes helps students to find good jobs also. In these programmes, sessions explaining the students to learn about the expectations of the prospective employers, personality development and many more also taught.",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "To enhance their practical skills, workshops on computer skills, robotics, aero modeling, microprocessor programming, etc are taught. Through the network of schools and colleges the students are invited for the 'meet the scientist' programmes, that are being organized periodically.",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Movements for Enhancing Teacher Resources",
                        style: TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Several School teachers, with interest in learning new techniques in Science Teaching, are provided with training periodically. To do this a set of resource persons from Tamilnadu Science and Technology Centre and Professors of Colleges and IIT travel across the State. Modern gadgets available for teaching are provided to them, training on preparing their own teaching aids, practices in astronomy and many more are provided.",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Exclusive Programmes on Maths Teaching with simple teaching aids are organized to train teachers to remove phobia on Maths learning from the students at elementary school level.",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Voice Care for Teachers, Training the Teachers to organize Sky Watch Programmes during rare celestial events, workshops on puppetry are some of the many activities intended for the teachers.",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Activities for the Special Children and General Public Planetarium Show for the Hearing Impaired",
                        style: TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "In order to bring cheers to the life of hearing impaired children, and to provide education on astronomy, B. M. Birla Planetarium of Tamilnadu Science and Technology Centre, Chennai has developed a planetarium show exclusively for them.",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "For this Programme a simple script was developed and it was interpreted by a sign language interpreter. It was filmed and was projected using a LCD projector in a corner of the planetarium dome. After the presentation of each small paragraphs of the script, the appropriate animation or picture or constellation or celestial navigation or special effect presentation were shown.",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Science Programmes for the Disabled",
                        style: TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Tamilnadu Science and Technology Centre is organising spend-a-day in science centre programme for the Hearing Impaired persons. A few sign language interpreters are being invited to accompany the students during the programmes. Every gallery has a write-up in Braille explaining the content of the science gallery.",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Programmes for the Home makers",
                        style: TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "The development of the country depends on the attitude and the activities of the women who look after the needs of the every member of the family. Children spend long times intimately with the mother in the home. If the mother is empowered with scientific awareness then the children also will have brighter knowledge. According to Psychological studies environment plays an important role. Tamilnadu Science and Technology Centre organises Programmes for the Homemakers periodically. By way of doing so, they are being provided with methods of earning money also. The waste management methods, producing bio-compost , vermiculture, home gardening etc are also being taught.",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Programmes for the family-groups",
                        style: TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "The knowledge development of a child will normally be closely monitored by their relatives. The parents and grand parents know the behaviour and the knowledge level of the child in the residence. However, their performance in a group and in their school and the comparison with their peer groups will largely be unknown to them. The family science learning programme gives the family an opportunity to understand the standard of the children and enables them to effect ways to improve. Whole-day programmes are being devised with combination of subjects and Psychological evaluation of the students by a professional Psychologist.",
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Programmes for the Self-Help Groups and Village Heads",
                        style: TextStyle(
                          color: Colors.lightBlue[900],
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "In the state of Tamilnadu Women Self Help groups are very active and are helpful to the society in many ways. Tamilnadu Science and Technology Centre organises exclusive programmes to them in order to train them in various skills. In addition, the village heads are important channels to transfer the government grants and the important announcements and the messages intended for the farming community. While organising the programmes for the Village heads we have seen the enthusiasm and the motivation among them to help the people of their region. Professionals from various research institutions like MS Swaminathan Research Foundation (MSSRF), IIT-Madras, CPR Environmental Foundation, etc and Experts from leading farms used to interact with the participants.",
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
