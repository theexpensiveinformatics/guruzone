import 'package:flutter/material.dart';
import 'package:guruzone/styles/backgrounds/backgroundWhite.dart';

class listTest extends StatefulWidget {
  const listTest({super.key});

  @override
  State<listTest> createState() => _listTestState();
}

class _listTestState extends State<listTest> {

  var arrFeaturedCourse =[
    {
      'rating':'4.5',
      'mentorName':'Mr. Magan Murji',
      'courseTitle':'Basic Figma to Advance Figma complete course',
      'langauge':'English',
      'rate':'5'
    },
    {
      'rating':'4.5',
      'mentorName':'Mr. Magan Murji',
      'courseTitle':'Basic Figma to Advance Figma complete course',
      'langauge':'English',
      'rate':'5'
    },
    {
      'rating':'4.5',
      'mentorName':'Mr. Magan Murji',
      'courseTitle':'Basic Figma to Advance Figma complete course',
      'langauge':'English',
      'rate':'5'
    },



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 265,
        child: ListView(

          padding: EdgeInsets.all(10),
          scrollDirection: Axis.horizontal,
          children: arrFeaturedCourse.map((e) => Container(
            width: 275,
            decoration: backgroundWhite,
            padding: EdgeInsets.all(8),
            child: Container(
              width: 100,
              height: 100,
              child: Column(
                children: [

                ],
              ),
            ),

          )
          ).toList(),
        ),
      ),
    );

  }
}
