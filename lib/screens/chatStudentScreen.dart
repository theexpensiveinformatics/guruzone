import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guruzone/styles/backgrounds/chatReplyContainer.dart';
import 'package:guruzone/styles/backgrounds/chatText.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/components/chatAnswerContainer.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/d1Light.dart';
import 'package:guruzone/styles/texts/h1.dart';
import 'package:guruzone/styles/texts/h2.dart';

class chatStudentScreen extends StatefulWidget{

  @override
  State<chatStudentScreen> createState() => _chatStudentScreenState();
}

class _chatStudentScreenState extends State<chatStudentScreen> {
  final Map mentorText= {
  '1' : 'Hi, yes you can join the course but currently for next month it is already full.',
    '2' : 'We can start in the month of November from the first week.',
    '3' : 'Once you pay the advance fees you will receive the details.'
  };

  final Map studentText = {
    '1':'Hello sir! Can I join your course from next month?',
    '2' : 'Okay sir! Then when can I start classes from you',
    '3' : 'Sir when will I receive the course details',
};

  final Map details = {
    'mentorName':'Riya Patel',
  'lastSeen': '12:30pm'};
  
  final double iconSide = 25;

  final double borderRadiusContainer = 12;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: background,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffdedede), // Specify the color of the shadow
                    offset: Offset(0, 4), // Specify the offset of the shadow
                    blurRadius:20, // Specify the blur radius of the shadow
                    spreadRadius: 0, // Specify the spread radius of the shadow
                  ),
                ],
              ),
              height: 90,
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            width: 22,
                            height: 22,
                            child: Image.asset('assets/images/arrow.png',
                            color: darkText,),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 22,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(details['mentorName'],
                              style: h2,),
                              Text('last seen at '+details['lastSeen'],
                              style: d1,),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          width: iconSide,
                          height: iconSide,
                          child: Image.asset('assets/images/contact.png',
                            color: darkText,),
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                          width: iconSide,
                          height: iconSide,
                          child: Image.asset('assets/images/more_three_dots.png',
                            color: darkText,),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
              child: Expanded(
                child: Column(
                  children: [
                    chatReplyContainer(
                        child: chatText(
                          text: studentText['1'],
                          style: TextStyle(
                            fontFamily: 'regular',
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        borderRadius: borderRadiusContainer),
                    chatAnswerContainer(
                        child:  chatText(
                          text: mentorText['1'],
                          style: d1,
                        ),
                        borderRadius: borderRadiusContainer),
                    chatReplyContainer(
                        child: chatText(
                          text: studentText['2'],
                          style: TextStyle(
                            fontFamily: 'regular',
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        borderRadius: borderRadiusContainer),
                    chatAnswerContainer(
                        child:  chatText(
                          text: mentorText['2'],
                          style: d1,
                        ),
                        borderRadius: borderRadiusContainer),
                    chatReplyContainer(
                        child: chatText(
                          text: studentText['3'],
                          style: TextStyle(
                            fontFamily: 'regular',
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        borderRadius: borderRadiusContainer),
                    chatAnswerContainer(
                        child:  chatText(
                          text: mentorText['3'],
                          style: d1,
                        ),
                        borderRadius: borderRadiusContainer),
                  ],
                ),
              ),
            ),
            // Container(
            //   child: Row(
            //     children: [
            //       Container(
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20),
            //           border: Border.all(color: darkText),
            //         ),
            //         child: TextField(
            //           decoration: InputDecoration(
            //             hintText: 'Type your message here',
            //             border: InputBorder.none,
            //           ),
            //         ),
            //       ),
            //       Container(
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(20)
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}