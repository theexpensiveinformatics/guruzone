import 'package:flutter/material.dart';
import 'package:guruzone/styles/backgrounds/backgroundWhite.dart';
import 'package:guruzone/styles/backgrounds/roundedBlue.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/components/mentorStudentRequestCard.dart';
import 'package:guruzone/styles/texts/blueRegular.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/d1Light.dart';
import 'package:guruzone/styles/texts/h1.dart';
import 'package:guruzone/styles/texts/h2.dart';

class mentorOnGoingTeachingsScreen extends StatefulWidget {

  @override
  State<mentorOnGoingTeachingsScreen> createState() => _mentorOnGoingTeachingsScreenState();
}

class _mentorOnGoingTeachingsScreenState extends State<mentorOnGoingTeachingsScreen> {
  // var username =  👋"; // username
  var ongoing = "Ongoing Teachings";

  bool boolOnGoing=true;

  var cardData = [
  {
    'titleTopic' : "Topic",
    'topic' : "3D object building using Adobe Ai Advance",
    'titleTutor' : "Student",
    'studentName' : "Riya Patel",
    'onGoingType' : "100% Personalized Learning",
  }
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: background,
        height: double.infinity,
        width:double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text('$ongoing',style: h1,),
              ),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 25,right: 25),
                child: Container(decoration: backgroundWhite,
                  width: double.infinity,

                  child:boolOnGoing == false ? Padding(
                    padding: const EdgeInsets.only(top: 40.0,bottom: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/guru.png',cacheHeight: 45),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text('Find a Student',style: h2,),
                        ),
                      ],
                    ),
                  )  : ListView(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: cardData.map((e) => Padding(
                      padding: const EdgeInsets.only(top: 25,bottom:20 ,left: 25, right: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(e['titleTopic'].toString(),
                        style: d1,),
                          Text(e['topic'].toString(),style: h2,maxLines: 1,overflow: TextOverflow.ellipsis,),
                          SizedBox(height: 15,),
                          Text(e['titleTutor'].toString(),style: d1,),
                          Text(e['studentName'].toString(),style: h2,maxLines: 1,overflow: TextOverflow.ellipsis,),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(e['onGoingType'].toString(),style: blueRegular,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,),
                              ),
                              Container(
                                width: 60,
                                height: 45,
                                decoration: roundedBlue,
                                child: Image.asset('assets/images/msg.png',
                                  cacheHeight: 25,),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    ).toList()
                  ) ,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}