import 'package:flutter/material.dart';
import 'package:guruzone/screens/mentorHomeScreen.dart';
import 'package:guruzone/styles/backgrounds/topContainer.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/texts/blueSmall.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/d1Light.dart';
import 'package:guruzone/styles/texts/h1.dart';
import 'package:guruzone/styles/texts/h1Blue.dart';
import 'package:guruzone/styles/texts/h2.dart';

class mentorStudentRequestDetailsContainer extends StatelessWidget{
  final String topic;
  final String studentName;
  final String profession;
  final String description;
  final String mode;
  final String language;
  final String personalization;
  final String price;

  const mentorStudentRequestDetailsContainer({super.key,
    required this.topic,
    required this.studentName,
    required this.profession,
    required this.description,
    required this.mode,
    required this.language,
    required this.personalization,
    required this.price,
    });

  static const double boxHeight=28.0;
  static const double boxWidth=2.4;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1), // Shadow color
              spreadRadius: 1, // Spread radius
              blurRadius: 1, // Blur radius
              offset: Offset(0, 1), // Offset (horizontal, vertical)
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Positioned(
                top: 24,
                left: 17,
                child: InkWell(
                  child: SizedBox(
                      width: 22,
                      height: 22,
                      child: Image.asset('assets/images/arrow.png',
                      color: darkText,),
                  ),
                  onTap: (){
                    // Navigate to ScreenB
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => mentorHomeScreen(),
                    )
                    );
                  },
                ),
              ),
              Text('$topic',
                  style: h1Blue),
              Row(
                children: [
                  Text(studentName,
                  style: h2,),
                  SizedBox(
                    width: 10,
                  ),
                  Text(profession,
                    style: d1Light,),
                ],
              ),
              Text('$description',
                  style: d1Light),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/boxWidth,
                    height: boxHeight,
                    decoration: topContainer,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 18,
                              width: 18,
                              child: Image.asset('assets/images/location_black.png',
                              color: darkText,)
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text(mode,
                            style: d1,)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/boxWidth,
                    height: boxHeight,
                    decoration: topContainer,
                    child: Center(
                      child: Text('$personalization',
                        style: d1,),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/boxWidth,
                    height: boxHeight,
                    decoration: topContainer,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 18,
                              width: 18,
                              child: Image.asset('assets/images/global.png',
                              color: darkText,)
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text('$language',
                            style: d1,)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/boxWidth,
                    height: boxHeight,
                    decoration: topContainer,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 18,
                              width: 18,
                              child: Image.asset('assets/images/dollar_blue.png',
                              color: darkText,)
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Text('₹'+price+'/hr',
                            style: d1,),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Text('The student is ready to pay ₹'+price+'/hour',
                style: blueSmall,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/2.7,
                    height: 36,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: red,
                            width: 0.65)
                    ),
                    alignment: Alignment.center,
                    child: Text('Reject',
                      style: TextStyle(
                          fontFamily: 'RegularFont',
                          color: red
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/2.7,
                    height: 36,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xff0095FF)),
                        color: Color(0xff0095FF)
                    ),
                    alignment: Alignment.center,
                    child: Text('Accept',
                      style: TextStyle(
                          fontFamily: 'RegularFont',
                          color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        )
    );
  }
}
