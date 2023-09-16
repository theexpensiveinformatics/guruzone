import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/d1Blue.dart';
import 'package:guruzone/styles/texts/d1Bold.dart';
import 'package:guruzone/styles/texts/d1Light.dart';
import 'package:guruzone/styles/texts/d2Light.dart';
import 'package:guruzone/styles/texts/h1.dart';
import 'package:guruzone/styles/texts/h2.dart';

class featuredCourseDetailsScreen extends StatefulWidget{

  @override
  State<featuredCourseDetailsScreen> createState() => _featuredCourseDetailsScreenState();
}

class _featuredCourseDetailsScreenState extends State<featuredCourseDetailsScreen> {
  var screenData = {
    'topic' : 'Android Development',
    'tutor' : 'Miss Riya Patel',
    'advance' : 450,
    'concept1' : 'Concept of Java',
    'concept2' : 'Installation of Android Studio',
  };

  var cardData = {
    'location' : 'Vapi, Gujarat',
    'language' : 'English & Hindi',
    'personalization' : '100% & partially Personalized',
    'price' : 200,
  };

  final double boxWidth = 40;

  final double lineWidth = 10;

  final double sidePadding = 10.0;

  final double boxSide = 80;

  final double iconSide = 16.0;
  final double iconText = 6.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: background,
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            child: Image.asset('assets/images/arrow.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Featured Course Details',
                            style: h1,)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Topic',
                                style: d1Light,),
                              Text(screenData['topic'].toString(),
                                style: d1Bold,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Tutor',
                              style: d1Light,),
                            Text(screenData['tutor'].toString(),
                              style: d1Bold,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Approximately 30 hours course',
                              style: d1Bold,),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(
                                      width: iconSide,
                                      height: iconSide,
                                      child: Image.asset('assets/images/location_blue.png'),
                                    ),
                                    SizedBox(width: iconText,),
                                    Text(cardData['location'].toString(),
                                      style: d1Light,)
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: iconSide,
                                      height: iconSide,
                                      child: Image.asset('assets/images/global_blue.png'),
                                    ),
                                    SizedBox(width: iconText,),
                                    Text(cardData['language'].toString(),
                                      style: d1Light,)
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: iconSide,
                                      height: iconSide,
                                      child: Image.asset('assets/images/calendar_blue.png'),
                                    ),
                                    SizedBox(width: iconText,),
                                    Text(cardData['personalization'].toString(),
                                      style: d1Light,)
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: iconSide,
                                      height: iconSide,
                                      child: Image.asset('assets/images/dollar_blue.png'),
                                    ),
                                    SizedBox(width: iconText,),
                                    Text('Starts from ₹'+cardData['price'].toString()+'/hour',
                                      style: d1Light,)
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

              ),
              Container(
                width: double.infinity,
                height: 1,
                color: Color(0xDAD3D3DC),
              ),
              Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: boxWidth,
                            ),
                            Container(
                              width: lineWidth,
                              alignment: Alignment.center,
                              child: Container(
                                width: 1,
                                height: 25,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Row(
                            children: [
                              Container(
                                width: boxWidth,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white, // Specify the border color
                                    width: 1.0, // Specify the border width
                                  ),
                                ),
                                width: lineWidth,
                                alignment: Alignment.center,
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: blue,
                                ),
                              ),
                            ]
                        ),
                        Row(
                          children: [
                            Container(
                              width: boxWidth,
                            ),
                            Container(
                              width: lineWidth,
                              alignment: Alignment.center,
                              child: Container(
                                width: 1,
                                height: 100,
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 15, 40, 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Topic 1 : Introduction',
                                        style: h2,),
                                      Text('- '+screenData['concept1'].toString(),
                                        style: d1,),
                                      Text('- '+screenData['concept2'].toString(),
                                        style: d1,),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                            children: [
                              Container(
                                width: boxWidth,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white, // Specify the border color
                                    width: 1.0, // Specify the border width
                                  ),
                                ),
                                width: lineWidth,
                                alignment: Alignment.center,
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: blue,
                                ),
                              ),
                            ]
                        ),
                        Row(
                          children: [
                            Container(
                              width: boxWidth,
                            ),
                            Container(
                              width: lineWidth,
                              alignment: Alignment.center,
                              child: Container(
                                width: 1,
                                height: 100,
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 15, 40, 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Topic 2 : Java Programming',
                                        style: h2,),
                                      Text('- Concept of java',
                                        style: d1,),
                                      SizedBox(
                                        width: MediaQuery.of(context).size.width/1.8,
                                        child: Text('- Java-specific features for Android development',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: d1,),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                            children: [
                              Container(
                                width: boxWidth,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white, // Specify the border color
                                    width: 1.0, // Specify the border width
                                  ),
                                ),
                                width: lineWidth,
                                alignment: Alignment.center,
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: blue,
                                ),
                              ),
                            ]
                        ),
                        Row(
                          children: [
                            Container(
                              width: boxWidth,
                            ),
                            Container(
                              width: lineWidth,
                              alignment: Alignment.center,
                              child: Container(
                                width: 1,
                                height: 100,
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 15, 40, 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Topic 3 : UI Design',
                                        style: h2,),
                                      Text('- Creating interactive layouts ',
                                        style: d1,),
                                      Text('- Using View components',
                                        style: d1,),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                            children: [
                              Container(
                                width: boxWidth,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white, // Specify the border color
                                    width: 1.0, // Specify the border width
                                  ),
                                ),
                                width: lineWidth,
                                alignment: Alignment.center,
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: blue,
                                ),
                              ),
                            ]
                        ),
                        Row(
                          children: [
                            Container(
                              width: boxWidth,
                            ),
                            Container(
                              width: lineWidth,
                              alignment: Alignment.center,
                              child: Container(
                                width: 1,
                                height: 100,
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 15, 40, 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Topic 4 : Activities and Intents',
                                        style: h2,),
                                      Text('- Creating interactive layouts',
                                        style: d1,),
                                      Text('- Using View components',
                                        style: d1,),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                            children: [
                              Container(
                                width: boxWidth,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white, // Specify the border color
                                    width: 1.0, // Specify the border width
                                  ),
                                ),
                                width: lineWidth,
                                alignment: Alignment.center,
                                child: CircleAvatar(
                                  radius: 5,
                                  backgroundColor: blue,
                                ),
                              ),
                            ]
                        ),
                        Row(
                          children: [
                            Container(
                              width: boxWidth,
                            ),
                            Container(
                              width: lineWidth,
                              alignment: Alignment.center,
                              child: Container(
                                width: 1,
                                height: 100,
                                color: Colors.grey,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 15, 40, 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Topic 5 : Data Storage',
                                        style: h2,),
                                      Text('- Working with SQLite',
                                        style: d1,),
                                      Text('- Utilizing and File I/O',
                                        style: d1,),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}