import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guruzone/screens/homeBottom.dart';
import 'package:guruzone/screens/homeScreen.dart';
import 'package:guruzone/screens/logInScreenMentor.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/components/studentProfileLearningsCard.dart';
import 'package:guruzone/styles/components/studentProfileSelfContainer.dart';
import 'package:guruzone/styles/texts/h1.dart';
import 'package:guruzone/styles/texts/h2.dart';

class studentProfileSelf extends StatefulWidget{
  @override
  State<studentProfileSelf> createState() => _studentProfileSelfState();
}

class _studentProfileSelfState extends State<studentProfileSelf> {
  var cardData = {
    'mentorName' : 'Riya Patel',
    'profession' : 'IT Engineer',
    'location' : 'Vapi, Gujarat',
    'language' : 'English & Hindi',
    'skills' : ['Flutter','Android','Java','M.L.','Node.js','Python'],
  };

  var skills = ['Flutter','Android','Java','M.L.','Node.js','Python'];

  var learningsData =[
  {'topic': 'Android App Development',
    'mentorName' : 'Riya Patel',
    'language' : 'English',
    'personalization' : '100% personalized',
    'mode' : 'Offline',
    'skill' : 'Development',
    'location' : 'Vadodara',
    'status' : 'Ongoing',
  },
    {'topic': 'Android App Development',
      'mentorName' : 'Riya Patel',
      'language' : 'English',
      'personalization' : '100% personalized',
      'mode' : 'Offline',
      'skill' : 'Development',
      'location' : 'Vadodara',
      'status' : 'Ongoing',
    },
    {'topic': 'Android App Development',
      'mentorName' : 'Riya Patel',
      'language' : 'English',
      'personalization' : '100% personalized',
      'mode' : 'Offline',
      'skill' : 'Development',
      'location' : 'Vadodara',
      'status' : 'Ongoing',
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: background,
        child: Stack(
          children:[
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(top:0),
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(27),bottomLeft: Radius.circular(27)
                        ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1), // Shadow color
                          offset: Offset(0, 5), // Offset of the shadow
                          blurRadius: 10, // Blur radius of the shadow
                          spreadRadius: 2, // Spread radius of the shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: (){
                                // Navigate to the second screen when tapped
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => homeBottom(isStudent: true),
                                  ),
                                );
                              },
                              child: SizedBox(
                                width: 20,
                                height: 20,
                                child: Image.asset('assets/images/arrow.png'),
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            SizedBox(
                              child: Text('Profile',
                                style: h1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => logInScreenMentor(),
                              ),
                            );
                          },
                          child: Container(
                              width: 90,
                              height: 30,
                              decoration: BoxDecoration(
                                border: Border.all(color: red,
                                    width: 0.7),
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 17,
                                    height: 17,
                                    child: Icon(Icons.logout,color: red,size: 15),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Logout',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'regular',
                                      color: red,
                                    ),
                                  )
                                ],
                              )
                          ),
                        )
                      ],
                    ),
                  ),
                )
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:
                  [studentProfileSelfContainer(name: cardData['mentorName'].toString(),
                    profession: cardData['profession'].toString(),
                    location: cardData['location'].toString(),
                    language: cardData['language'].toString(),
                    gridData: cardData['skills'],
                    skills: skills,
                  ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(25,0,25,0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('My Learnings',
                            style: h2,),
                            ListView(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              children: learningsData.map((e) => studentProfileLearningsCard(topic: e['topic'].toString(), mentorName: e['mentorName'].toString(), language: e['language'].toString(), personalization: e['personalization'].toString(), mode: e['mode'].toString(), location: e['location'].toString(), skill: e['skill'].toString(), status: e['status'].toString())
                              ).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}