import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/components/mentorProfile.dart';
import 'package:guruzone/styles/texts/h1.dart';
import 'package:guruzone/styles/texts/r1.dart';
import 'package:guruzone/styles/texts/redSmall.dart';

class mentorProfileScreen extends StatefulWidget{
  @override
  State<mentorProfileScreen> createState() => _mentorProfileScreenState();
}

class _mentorProfileScreenState extends State<mentorProfileScreen> {
  var cardData = {
  'mentorName' : 'Riya Patel',
  'profession' : 'IT Engineer',
    'location' : 'Vapi, Gujarat',
    'language' : 'English & Hindi',
    'personalization' : '100% & partially Personalized',
    'price' : 200,
    'skills' : ['Flutter','Android','Java','M.L.','Node.js','Python'],
    'ratings' : 4.5,
    'reviewCount' : 150,
};

   var skills = ['Flutter','Android','Java','M.L.','Node.js','Python'];

   var reviews = [
     {
       'name' : 'Riya Patel',
       'review' : 'Take one of Udemy’s range of Python courses and learn how to code using this incredibly useful language. Its simple syntax and readability makes Python perfect for Flask, Django, data science, and machine learning. '
     },
   ];

  final List<String> ratingNumber = ['5','4','3','2','1'];

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
                  padding: const EdgeInsets.only(top:10),
                  child: Container(
                    height: 75,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15)
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xffD9D9D9),
                            blurRadius: 9.0, // Blur radius of the shadow
                            spreadRadius: 2.0, // Spread of the shadow
                            offset: Offset(2.0, 2.0),
                          )
                        ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                              height: 20,
                              child: Image.asset('assets/images/arrow.png'),
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            SizedBox(
                              child: Text('Mentor Profile',
                                style: h1,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 1,
                        ),
                        Container(
                            width: 90,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(color: red,
                                  width: 0.7),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: red, // Border color
                                      width: 1.0, // Border width
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    radius: 7,
                                    backgroundColor: Colors.white,
                                    child: Text('!',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontFamily: 'regular',
                                        color: red,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Report',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'regular',
                                    color: red,
                                  ),
                                )
                              ],
                            )
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
                children:
                  [mentorProfile(name: cardData['mentorName'].toString(),
                      profession: cardData['profession'].toString(),
                      location: cardData['location'].toString(),
                      language: cardData['language'].toString(),
                      personalization: cardData['personalization'].toString(),
                      price: cardData['price'].toString(),
                      gridData: cardData['skills'],
                    skills: skills,
                    ratings: cardData['ratings'].toString(),
                    reviewCount: cardData['reviewCount'].toString(),
                    ratingNumber: ratingNumber,
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