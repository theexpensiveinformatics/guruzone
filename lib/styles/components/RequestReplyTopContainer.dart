import 'package:flutter/material.dart';
import 'package:guruzone/styles/backgrounds/topContainer.dart';
import 'package:guruzone/styles/texts/blueSmall.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/d1Light.dart';
import 'package:guruzone/styles/texts/h1.dart';

class RequestReplyTopContainer extends StatelessWidget{
  final String topic;
  final String description;
  final String requestSent;
  final String language;
  final String personalization;
  final String mode;
  final String location;
  final String skill;
  final String price;

  const RequestReplyTopContainer({super.key,
  required this.topic,
  required this.description,
  required this.requestSent,
  required this.language,
    required this.personalization,
  required this.mode,
    required this.location,
  required this.skill,
  required this.price});

  static const double boxHeight=25.0;
  static const double boxWidth=155.0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(17, 55, 17, 0),
      child: Container(
        color: Colors.white,
        height: 150,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('$topic',
            style: h1),
            Text('$description',
            style: d1Light),
            Text('This Request had been sent to ''$requestSent',
            style: blueSmall,),
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
            Text('Are you ready to pay Rs'+price+'/hour',
            style: blueSmall,),
            Container(
              height: 35,
              color: Color(0xFFF6F6FB),
            )
          ],
        )
      ),
    );
  }
}
