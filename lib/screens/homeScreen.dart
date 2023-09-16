import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guruzone/screens/courseDetailsScreen.dart';
import 'package:guruzone/screens/homeBottom.dart';
import 'package:guruzone/styles/backgrounds/backgroundWhite.dart';
import 'package:guruzone/styles/backgrounds/roundedBlue.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/components/featuredCourseComponent.dart';
import 'package:guruzone/styles/components/guruForYou.dart';
import 'package:guruzone/styles/texts/blueRegular.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/d1Light.dart';
import 'package:guruzone/styles/texts/d2Light.dart';
import 'package:guruzone/styles/texts/h1.dart';
import 'package:guruzone/styles/texts/h2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homeScreen extends StatefulWidget {
  final String username; // Add the username parameter
  homeScreen({required this.username});

   // Add this field



  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {

  String token = '';
  @override
  void initState() {
    super.initState();
    getToken(); // Call this method to retrieve the token when the widget initializes
  }

  Future<void> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    final storedToken = prefs.getString('token') ?? ''; // Use a default value if the token is not found
    setState(() {
      token = storedToken;
      print('CHECKKKKKKKKKK : $token');

    });
  }

  // var username =  👋"; // username
  var letsStart = "Let's start learning";
  var search="Search Mentors";
  var ongoing = "Ongoing Learning";
  bool boolOnGoing=true;
  var titleTopic = "Topic";
  var topic = "3D object building using Adobe Ai Advance";
  var titleTutor = "Tutor";
  var tutor="Mr. Mohan Bansal";
  var onGoingType="100% Personalized Learning";
  var gurufForYou = "Guru for you";
  var featuredCourse = "Featured Course";

  var arrGuruForYou = [
    {
      'mentorName':'Radhe Shyam ',
      'post' : 'IT Engineer',
      'rating':'4.5',
      'reviewsCount':'100',
      'location':'Viramgam, Gujarat',
      'locationLink':'',
      'linkedin':'https://',
      'liked':'true',
      'imgUrl':'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcT102smwP3i_8JvPTdQLKx3s9FQl42bP6q5HIzKoWGMchz0s3EMOYAGCgPkz-QrQ4IOxARMChyDj0WBgQ4',
    },
    {
      'mentorName':'Radhe Shyam ',
      'post' : 'IT Engineer',
      'rating':'4.5',
      'reviewsCount':'100',
      'location':'Viramgam, Gujarat',
      'locationLink':'',
      'linkedin':'https://',
      'liked':'true',
      'imgUrl':'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcT102smwP3i_8JvPTdQLKx3s9FQl42bP6q5HIzKoWGMchz0s3EMOYAGCgPkz-QrQ4IOxARMChyDj0WBgQ4',
    },
    {
      'mentorName':'Radhe Shyam ',
      'post' : 'IT Engineer',
      'rating':'4.5',
      'reviewsCount':'100',
      'location':'Viramgam, Gujarat',
      'locationLink':'',
      'linkedin':'https://',
      'liked':'true',
      'imgUrl':'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcT102smwP3i_8JvPTdQLKx3s9FQl42bP6q5HIzKoWGMchz0s3EMOYAGCgPkz-QrQ4IOxARMChyDj0WBgQ4',
    },
    {
      'mentorName':'Radhe Shyam ',
      'post' : 'IT Engineer',
      'rating':'4.5',
      'reviewsCount':'100',
      'location':'Viramgam, Gujarat',
      'locationLink':'',
      'linkedin':'https://',
      'liked':'true',
      'imgUrl':'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcT102smwP3i_8JvPTdQLKx3s9FQl42bP6q5HIzKoWGMchz0s3EMOYAGCgPkz-QrQ4IOxARMChyDj0WBgQ4',
    },

  ];

  var arrFeaturedCourse =[
    {
      'rating':'4.5',
      'mentorName':'Mr. Radhe Shyam ',
      'courseTitle':'Basic Figma to Advance Figma complete course',
      'language':'English',
      'rate':'5',
      'teachingType':'100% Personalized',
      'imgUrl':'https://firebasestorage.googleapis.com/v0/b/error404-948dd.appspot.com/o/quiz%2Fbooks.png?alt=media&token=e13a0e4e-9745-4647-ab20-c9674896fe97'
    },
    {
      'rating':'4.5',
      'mentorName':'Mr. Radhe Shyam 2',
      'courseTitle':'Basic Figma to Advance Figma complete course',
      'language':'Hindi',
      'rate':'5',
      'teachingType':'Partially Personalized',
      'imgUrl':'https://firebasestorage.googleapis.com/v0/b/error404-948dd.appspot.com/o/quiz%2Fbooks.png?alt=media&token=e13a0e4e-9745-4647-ab20-c9674896fe97'
    },
    {
      'rating':'4.5',
      'mentorName':'Mr. Radhe Shyam 3',
      'courseTitle':'Basic Figma to Advance Figma complete course',
      'language':'English',
      'rate':'5',
      'teachingType':'100% Personalized',
      'imgUrl':'https://firebasestorage.googleapis.com/v0/b/error404-948dd.appspot.com/o/quiz%2Fbooks.png?alt=media&token=e13a0e4e-9745-4647-ab20-c9674896fe97'
    },
    {
      'rating':'4.5',
      'mentorName':'Mr. Radhe Shyam ',
      'courseTitle':'Basic Figma to Advance Figma complete course',
      'language':'English',
      'rate':'5',
      'teachingType':'100% Personalized',
      'imgUrl':'https://firebasestorage.googleapis.com/v0/b/error404-948dd.appspot.com/o/quiz%2Fbooks.png?alt=media&token=e13a0e4e-9745-4647-ab20-c9674896fe97'
    },
    {
      'rating':'4.5',
      'mentorName':'Mr. Radhe Shyam ',
      'courseTitle':'Basic Figma to Advance Figma complete course',
      'language':'English',
      'rate':'5',
      'teachingType':'100% Personalized',
      'imgUrl':'https://firebasestorage.googleapis.com/v0/b/error404-948dd.appspot.com/o/quiz%2Fbooks.png?alt=media&token=e13a0e4e-9745-4647-ab20-c9674896fe97'
    },
    {
      'rating':'4.5',
      'mentorName':'Mr. Radhe Shyam ',
      'courseTitle':'Basic Figma to Advance Figma complete course',
      'language':'English',
      'rate':'5',
      'teachingType':'100% Personalized',
      'imgUrl':'https://firebasestorage.googleapis.com/v0/b/error404-948dd.appspot.com/o/quiz%2Fbooks.png?alt=media&token=e13a0e4e-9745-4647-ab20-c9674896fe97'
    },



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
               padding: const EdgeInsets.only(top:25,left: 25,right: 25),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text('Hi Krushang👋',style: h1),
                       Text('$letsStart',style: d1,)
                     ],
                   ),

                   Container(
                     decoration: backgroundWhite,
                     width: 45,
                     height: 45,
                     child: Image.asset('assets/images/notification.png',cacheHeight: 20),
                   )
                 ],
               ),
             ),

             SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.only(right: 25,left: 25),
               // child: Container(
               //   width: double.infinity,
               //   height: 55,
               //   decoration: backgroundWhite,
               //   child: Row(
               //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
               //     crossAxisAlignment: CrossAxisAlignment.center,
               //     children: [
               //       Row(
               //
               //         children: [
               //           Padding(
               //             padding: const EdgeInsets.only(left: 25),
               //             child: Image.asset("assets/images/search.png",cacheHeight: 20,),
               //           ),
               //
               //           Padding(
               //             padding: const EdgeInsets.only(left: 25.0),
               //             child: Text('$search',style: d1Light,),
               //           ),
               //
               //         ],
               //       ),
               //       Padding(
               //         padding: const EdgeInsets.only(right: 20),
               //         child: Image.asset("assets/images/setting.png",cacheHeight: 15,),
               //       ),
               //
               //     ],
               //   ),
               // ),
             ),

             SizedBox(height: 25,),
             Padding(
               padding: const EdgeInsets.only(left: 25),
               child: Text('$ongoing',style: h1,),
             ),
             SizedBox(height: 15,),


             InkWell(
               onTap: (){

             Navigator.push(context, MaterialPageRoute(builder: (context)=> courseDetailsScreen()));
               },
               child: Padding(
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
                           child: Text('Find Your Guru',style: h2,),
                         ),
                       ],
                     ),
                   )  : Padding(
                     padding: const EdgeInsets.only(top: 25,bottom:20 ,left: 25, right: 25),
                     child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                             Text("$titleTopic",style: d1,),
                             Text('$topic',style: h2,maxLines: 1,overflow: TextOverflow.ellipsis,),
                             SizedBox(height: 15,),
                             Text("$titleTutor",style: d1,),
                             Text('$tutor',style: h2,maxLines: 1,overflow: TextOverflow.ellipsis,),
                             SizedBox(height: 10,),
                             Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Text('$onGoingType',style: blueRegular,maxLines: 1,overflow: TextOverflow.ellipsis,),
                                 Container(
                                   width: 60,
                                   height: 45,
                                   decoration: roundedBlue,
                                   child: Image.asset('assets/images/msg.png',cacheHeight: 25,),
                                 )
                               ],
                             ),
                     ],
                 ),
                   ) ,
                 ),
               ),
             ),

             SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.only(left: 25,right: 25),
               child: Text('$featuredCourse',style: h1,),
             ),
             SizedBox(height: 15,),
             Container(
               height: 260,
               width: double.infinity,
               child: Container(
                 child: Padding(
                   padding: const EdgeInsets.only(left: 25),
                   child: ListView(
                     scrollDirection: Axis.horizontal,
                     children: arrFeaturedCourse.map((e) => Container(

                       width: 280,
                       padding: EdgeInsets.only(left: 10),

                       // child: Container(
                       //   height: 100,
                       //   decoration: backgroundWhite,
                       // ),

                       child: featuredCourseComponent(mentorName: e['mentorName'].toString(),courseTitle: e['courseTitle'].toString(),language: e['language'].toString(),rating: e['rating'].toString(),rate: e['rate'].toString(),teachingType: e['teachingType'].toString(),onPressed: (){},imgUrl: e['imgUrl'].toString()),
                     )
                     ).toList(),
                   ),
                 ),
               ),
             ),


             SizedBox(height: 25,),
             Padding(
               padding: const EdgeInsets.only(left: 25,right: 25),
               child: Text('$gurufForYou',style: h1,),
             ),
             Container(
               // height: MediaQuery.of(context).size.height,
               width: double.infinity,
               child: ListView(
                 shrinkWrap: true,
                 physics: NeverScrollableScrollPhysics(),
                 scrollDirection: Axis.vertical,

                 children: arrGuruForYou.map((e) => Container(
                   // width: 280,
                   height: 90,
                   padding: EdgeInsets.only(top: 10,right: 25,left: 25),
                   child: Container(
                     // decoration: backgroundWhite,
                     child: guruForYou(imgUrl: e['imgUrl'].toString(),rating: e['rating'].toString(),liked: e['liked'].toString(),linkedinUrl: e['linkedUrl'].toString(),location: e['location'].toString(),mentorName: e['mentorName'].toString(),post: e['post'].toString(),reviewsCount: e['reviewsCount'].toString(), locationLink: e['locationLink'].toString(),onPressed: (){}),

                   ),
                 )
                 ).toList(),
               ),
             ),
           ],
         ),
       ),
        ),
    );
  }

}


