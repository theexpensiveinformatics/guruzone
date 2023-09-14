import 'package:flutter/material.dart';
import 'package:guruzone/styles/backgrounds/topContainer.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/d1Bold.dart';
import 'package:guruzone/styles/texts/d1Light.dart';
import 'package:guruzone/styles/texts/d2Blue.dart';

class mentorStudentRequestCard extends StatelessWidget{
  final String topic;
  final String name;
  final String location;
  final String profession;
  final String language;
  final String personalization;
  final String price;

  const mentorStudentRequestCard({super.key,
    required this.topic,
    required this.name,
    required this.location,
    required this.profession,
    required this.language,
    required this.personalization,
    required this.price,
   });

  static const double boxHeight=25.0;
  static const double boxWidth=135.0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Container(
          height: 220,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: borderColor1),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(topic,
                        style: TextStyle(
                fontFamily: 'regular',
                color: blue,
                fontSize: 14,
                fontWeight: FontWeight.bold
            )
          ),
                    Text('View',
                      style: d2Blue,)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(name,
                        style: d1Bold,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(profession,
                    style: d1Light,)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: boxWidth,
                      height: boxHeight,
                      decoration: topContainer,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 18,
                                width: 18,
                                child: Image.asset('assets/images/global.png')
                            ),
                            SizedBox(
                              width: 7,
                            ),
                            Text(location,
                              style: d1,)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: boxWidth,
                      height: boxHeight,
                      decoration: topContainer,
                      child: Center(
                        child: Text(personalization,
                          style: d1,),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: boxWidth,
                      height: boxHeight,
                      decoration: topContainer,
                      child: Center(
                        child: Text(language,
                          style: d1,),
                      ),
                    ),
                    Container(
                      width: boxWidth,
                      height: boxHeight,
                      decoration: topContainer,
                      child: Center(
                        child: Text('₹'+price+'/hour',
                          style: d1,
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
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
          )
      ),
    );
  }
}
