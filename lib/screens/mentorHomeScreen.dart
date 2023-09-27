import 'package:flutter/material.dart';
import 'package:guruzone/screens/mentorStudentRequestDetailsScreen.dart';
import 'package:guruzone/screens/mentorStudentRequestScreen.dart';
import 'package:guruzone/styles/backgrounds/backgroundWhite.dart';
import 'package:guruzone/styles/backgrounds/roundedBlue.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/components/mentorStudentRequestCard.dart';
import 'package:guruzone/styles/texts/blueRegular.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/d1Light.dart';
import 'package:guruzone/styles/texts/h1.dart';
import 'package:guruzone/styles/texts/h2.dart';

class mentorHomeScreen extends StatefulWidget {
  @override
  State<mentorHomeScreen> createState() => _mentorHomeScreenState();
}

class _mentorHomeScreenState extends State<mentorHomeScreen> {
  // var username =  👋"; // username
  var letsStart = "Let's start educating";

  var search = "Search Courses";

  var ongoing = "Ongoing Teachings";

  bool boolOnGoing = true;

  final List<Map<String, String>> dataList = [
    {
      'titleTopic': 'Topic',
      'topic': '3D object building using Adobe Ai Advance',
      'titleTutor': "Student",
      'tutor': "Riya Patel",
      'onGoingType': "100% Personalized Learning",
    },
    {
      'titleTopic': 'Topic',
      'topic': '3D object building using Adobe Ai Advance',
      'titleTutor': "Student",
      'tutor': "Riya Patel",
      'onGoingType': "100% Personalized Learning",
    },
    {
      'titleTopic': 'Topic',
      'topic': '3D object building using Adobe Ai Advance',
      'titleTutor': "Student",
      'tutor': "Riya Patel",
      'onGoingType': "100% Personalized Learning",
    },
  ];

  var cardData = [
    {
      'topic': 'Android App Development',
      'studentName': 'Riya Patel',
      'profession' : 'IT Student',
      'description': 'Lorem ipsum dolor sit amet consectetur. Urna tortor nisi etiam pharetra senectus. Flaucibus sit faucibus.',
      'mode': 'Online',
      'personalization': '100% personalized',
      'language': 'English',
      'price': '100',
    },
    {
      'topic': 'Android App Development',
      'studentName': 'Riya Patel',
      'profession' : 'IT Student',
      'description': 'Lorem ipsum dolor sit amet consectetur. Urna tortor nisi etiam pharetra senectus. Flaucibus sit faucibus.',
      'mode': 'Online',
      'personalization': '100% personalized',
      'language': 'English',
      'price': '100',
    },
    {
      'topic': 'Android App Development',
      'studentName': 'Riya Patel',
      'profession' : 'IT Student',
      'description': 'Lorem ipsum dolor sit amet consectetur. Urna tortor nisi etiam pharetra senectus. Flaucibus sit faucibus.',
      'mode': 'Online',
      'personalization': '100% personalized',
      'language': 'English',
      'price': '100',
    },
  ];

  PageController _pageController = PageController(initialPage: 0);

  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: background,
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hi ', style: h1),
                        Text(
                          '$letsStart',
                          style: d1,
                        )
                      ],
                    ),
                    Container(
                      decoration: backgroundWhite,
                      width: 45,
                      height: 45,
                      child: Image.asset('assets/images/notification.png',
                          cacheHeight: 20),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25, left: 25),
                child: Container(
                  width: double.infinity,
                  height: 55,
                  decoration: backgroundWhite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Image.asset(
                              "assets/images/search.png",
                              cacheHeight: 20,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25.0),
                            child: Text(
                              '$search',
                              style: d1Light,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Image.asset(
                          "assets/images/setting.png",
                          cacheHeight: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  '$ongoing',
                  style: h1,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Container(
                  // decoration: backgroundWhite,
                  width: double.infinity,

                  child: boolOnGoing == false
                      ? Padding(
                          padding: const EdgeInsets.only(top: 40.0, bottom: 40),
                          child: Container(
                            decoration: backgroundWhite,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/guru.png',
                                    cacheHeight: 45),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    'Find a Student',
                                    style: h2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Column(
                          children: <Widget>[
                            Container(
                              decoration: backgroundWhite,
                              height: 220,
                              child: PageView(
                                physics: AlwaysScrollableScrollPhysics(),
                                controller: _pageController,
                                onPageChanged: (int page) {
                                  setState(() {
                                    _currentPage = page;
                                  });
                                },
                                children: dataList
                                    .map(
                                      (e) => Padding(
                                        padding: const EdgeInsets.only(
                                            top: 25,
                                            bottom: 20,
                                            left: 25,
                                            right: 25),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              e["titleTopic"].toString(),
                                              style: d1,
                                            ),
                                            Text(
                                              e['topic'].toString(),
                                              style: h2,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              e["titleTutor"].toString(),
                                              style: d1,
                                            ),
                                            Text(
                                              e['tutor'].toString(),
                                              style: h2,
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    e['onGoingType'].toString(),
                                                    style: blueRegular,
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                ),
                                                Container(
                                                  width: 60,
                                                  height: 45,
                                                  decoration: roundedBlue,
                                                  child: Image.asset(
                                                    'assets/images/msg.png',
                                                    cacheHeight: 25,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List<Widget>.generate(
                                dataList.length,
                                (int index) {
                                  return Container(
                                    width: 10,
                                    height: 10,
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: _currentPage == index
                                          ? Colors.blue
                                          : Colors.grey,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Student Requests',
                      style: h1,
                    ),
                    InkWell(
                      child: Text(
                        'See all',
                        style: d1Light,
                      ),
                      onTap: (){
                        // Navigate to ScreenB
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => mentorStudentRequestScreen(),
                        )
                        );
                      },
                    )
                  ],
                ),
              ),
              ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: cardData
                      .map((e) => mentorStudentRequestCard(
                          topic: e['topic'].toString(),
                          name: e['studentName'].toString(),
                          location: e['mode'].toString(),
                          profession: e['profession'].toString(),
                          language: e['language'].toString(),
                          personalization: e['personalization'].toString(),
                          price: e['price'].toString(),
                    detailsData: e,
                  )
                  )
                      .toList()),
            ],
          ),
        ),
      ),
    );
  }
}
