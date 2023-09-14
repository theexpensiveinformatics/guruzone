import 'package:flutter/material.dart';
import 'package:guruzone/styles/backgrounds/topContainer.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/texts/blueSmall.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/d1Blue.dart';
import 'package:guruzone/styles/texts/h1.dart';
import 'package:guruzone/styles/texts/h2.dart';

class studentProfileLearningsCard extends StatelessWidget{
  final String topic;
  final String mentorName;
  final String language;
  final String personalization;
  final String mode;
  final String location;
  final String skill;
  final String status;

  const studentProfileLearningsCard({super.key,
    required this.topic,
    required this.mentorName,
    required this.language,
    required this.personalization,
    required this.mode,
    required this.location,
    required this.skill,
    required this.status});

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
                Text(topic,
                    style: h2),
                Text('Mentor: '+mentorName,
                    style: d1Blue),
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
                            Text('$language',
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
                      width: boxWidth,
                      height: boxHeight,
                      decoration: topContainer,
                      child: Center(
                        child: Text('$mode'' - ''$location',
                          style: d1,),
                      ),
                    ),
                    Container(
                      width: boxWidth,
                      height: boxHeight,
                      decoration: topContainer,
                      child: Center(
                        child: Text(skill,
                          style: d1,),
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
                  child: Text(status,
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
