import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guruzone/styles/components/searchCard.dart';

import '../styles/colors.dart';

class searchScreen extends StatefulWidget {
  const searchScreen({super.key});

  @override
  State<searchScreen> createState() => _searchScreenState();
}

class _searchScreenState extends State<searchScreen> {

  var arrSearch = [
    {
      'name' : 'Riya Patel',
      'profession' : 'IT Engineer',
      'rating' : 4.7,
      'reviewCount' : 100,
      'location' : 'Vapi, Gujarat',
      'linkin' : 'https://in.linkedin.com',
      'language' : 'English',
      'teachingType' : '100% Personalized',
      'rate' : 5,
      'imgUrl':'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcT102smwP3i_8JvPTdQLKx3s9FQl42bP6q5HIzKoWGMchz0s3EMOYAGCgPkz-QrQ4IOxARMChyDj0WBgQ4',
      'liked' : 'true',
    },
    {
      'name' : 'Riya Patel',
      'profession' : 'IT Engineer',
      'rating' : 4.7,
      'reviewCount' : 100,
      'location' : 'Vapi, Gujarat',
      'linkin' : 'https://in.linkedin.com',
      'language' : 'English',
      'teachingType' : 'Partially Personalized',
      'rate' : 5,
      'imgUrl':'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcT102smwP3i_8JvPTdQLKx3s9FQl42bP6q5HIzKoWGMchz0s3EMOYAGCgPkz-QrQ4IOxARMChyDj0WBgQ4',
      'liked' : 'true',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
          width: double.infinity,
          color: background,
          child:Column(
            children: [
              ListView(
                shrinkWrap: true,
                children: arrSearch.map((e) => Container(
                 // height: 150,
                 width: double.infinity,
                 padding: EdgeInsets.only(right: 25,left: 25,top: 10),
                  child: searchCard(onPressed: (){},name: e['name'].toString(),location: e['location'].toString(),rating: e['rating'].toString(),teachingType: e['teachingType'].toString(),rate: e['rate'].toString(),language: e['language'].toString(),linkedin: e['linkedin'].toString(),profession: e['profession'].toString(),reviewCount: e['reviewCount'].toString(), liked: e['liked'].toString(), imgUrl: e['imgUrl'].toString(),),
                )).toList(),
              )
            ],
          )
      ),
    );
  }
}
