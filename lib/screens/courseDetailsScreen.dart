import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guruzone/screens/homeBottom.dart';
import 'package:guruzone/screens/homeScreen.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/d1Light.dart';
import 'package:guruzone/styles/texts/d2Light.dart';
import 'package:guruzone/styles/texts/h1.dart';
import 'package:guruzone/styles/texts/h2.dart';

class courseDetailsScreen extends StatefulWidget{
  @override
  State<courseDetailsScreen> createState() => _courseDetailsScreenState();
}

class _courseDetailsScreenState extends State<courseDetailsScreen> {
  var screenData = {
    'topic' : 'Android Development',
    'tutor' : 'Miss Riya Patel',
    'advance' : 450,
    'concept1' : 'Concept of Java',
    'concept2' : 'Installation of Android Studio',
  };

  final double boxWidth = 40;
  final double lineWidth = 10;
  final double sidePadding = 10.0;
  final double boxSide = 80;

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
                          Text('Course Details',
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
                                style: h2,
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
                                  style: h2,
                                ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width/2.9,
                              height: 36,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(color: Color(0xff0095FF),
                                      width: 0.65)
                              ),
                              alignment: Alignment.center,
                              child: Text('Chat',
                                style: TextStyle(
                                    fontFamily: 'semiBold',
                                    color: Color(0xff0095FF)
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width/2.9,
                              height: 36,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Color(0xff0095FF)),
                                  color: Color(0xff0095FF)
                              ),
                              alignment: Alignment.center,
                              child: Text('Class Link',
                                style: TextStyle(
                                    fontFamily: 'semiBold',
                                    color: Colors.white
                                ),
                              ),
                            ),
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
                          SizedBox(
                            width: sidePadding,
                          ),
                          Text('17th Sep 2023',
                          style: TextStyle(
                            fontFamily: 'regular',
                            color: darkText,
                            fontSize: 12,
                          ),
                          )
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
                              height: 120,
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
                                    Text('First Advance Payment',
                                    style: h2,),
                                    Text('3 hours fee: ₹'+screenData['advance'].toString()+'/-',
                                    style: d1,),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width/3,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),
                                          border: Border.all(color: Color(0xff0095FF)),
                                          color: Color(0xff0095FF)
                                      ),
                                      alignment: Alignment.center,
                                      child: Text('Payment',
                                        style: TextStyle(
                                            fontFamily: 'semiBold',
                                            color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
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
                            SizedBox(
                              width: sidePadding,
                            ),
                            Text('18th Sep 2023',
                              style: TextStyle(
                                fontFamily: 'regular',
                                color: darkText,
                                fontSize: 12,
                              ),
                            )
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
                              height: 220,
                              color: Colors.grey,
                            ),
                          ),
                          Column(
                            children: [
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
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      width: boxSide,
                                      height: boxSide,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/images/background.png'), // Replace with your image path
                                            fit: BoxFit.cover, // You can choose how the image is fitted inside the container
                                          ),
                                        ),
                                      )
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                        width: boxSide,
                                        height: boxSide,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/background.png'), // Replace with your image path
                                              fit: BoxFit.cover, // You can choose how the image is fitted inside the container
                                            ),
                                          ),
                                        )
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                        width: boxSide,
                                        height: boxSide,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Colors.white,
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: AssetImage('assets/images/background.png'), // Replace with your image path
                                              fit: BoxFit.cover, // You can choose how the image is fitted inside the container
                                            ),
                                          ),
                                        )
                                    ),
                                  ),
                                    ],
                          ),
                        ],
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
                            SizedBox(
                              width: sidePadding,
                            ),
                            Text('18th Sep 2023',
                              style: TextStyle(
                                fontFamily: 'regular',
                                color: darkText,
                                fontSize: 12,
                              ),
                            )
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
                              height: 120,
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
                                    Text('Payment Request',
                                      style: h2,),
                                    Text('3 hours fee: ₹'+screenData['advance'].toString()+'/-',
                                      style: d1,),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width/3,
                                      height: 25,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),
                                          border: Border.all(color: Color(0xff00D008)),
                                          color: Color(0xff00D008)
                                      ),
                                      alignment: Alignment.center,
                                      child: Text('Pay Now',
                                        style: TextStyle(
                                            fontFamily: 'semiBold',
                                            color: Colors.white
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
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