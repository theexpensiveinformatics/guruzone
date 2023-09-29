import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/components/mentorProfile.dart';
import 'package:guruzone/styles/components/mentorProfileReview.dart';
import 'package:guruzone/styles/components/mentorProfileSelf.dart';
import 'package:guruzone/styles/texts/h1.dart';
import 'package:guruzone/styles/texts/r1.dart';
import 'package:guruzone/styles/texts/redSmall.dart';

class mentorProfileSelfScreen extends StatefulWidget{

  @override
  State<mentorProfileSelfScreen> createState() => _mentorProfileSelfScreenState();
}

class _mentorProfileSelfScreenState extends State<mentorProfileSelfScreen> {
  var cardData = {
    'mentorName' : 'Riya Patel',
    'profession' : 'IT Engineer',
    'location' : 'Vapi, Gujarat',
    'language' : 'English & Hindi',
    'personalization' : '100% & partially Personalized',
    'price' : 200,
    'skills' : ['Flutter','Android','Java','M.L.','Node.js','Python'],
    'ratings' : 4.5,
    'reviewCount' : 150,
  };

  var skills = ['Flutter','Android','Java','M.L.','Node.js','Python'];

  var reviews = [
    {
      'name' : 'Riya Patel',
      'rating' : 4,
      'review' : 'Take one of Udemy’s range of Python courses and learn how to code using this incredibly useful language. Its simple syntax and readability makes Python perfect for Flask, Django, data science, and machine learning. '
    },
    {
      'name' : 'Riya Patel',
      'rating' : 2,
      'review' : 'Take one of Udemy’s range of Python courses and learn how to code using this incredibly useful language. Its simple syntax and readability makes Python perfect for Flask, Django, data science, and machine learning. '
    },
    {
      'name' : 'Riya Patel',
      'rating' : 1,
      'review' : 'Take one of Udemy’s range of Python courses and learn how to code using this incredibly useful language. Its simple syntax and readability makes Python perfect for Flask, Django, data science, and machine learning. '
    },
    {
      'name' : 'Riya Patel',
      'rating' : 3,
      'review' : 'Take one of Udemy’s range of Python courses and learn how to code using this incredibly useful language. Its simple syntax and readability makes Python perfect for Flask, Django, data science, and machine learning. '
    },
    {
      'name' : 'Riya Patel',
      'rating' : 5,
      'review' : 'Take one of Udemy’s range of Python courses and learn how to code using this incredibly useful language. Its simple syntax and readability makes Python perfect for Flask, Django, data science, and machine learning. '
    },

  ];

  final List<String> ratingNumber = ['5','4','3','2','1'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: background,
        child: Column(
          children:[
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(27),bottomLeft: Radius.circular(27)
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1), // Shadow color
                      offset: Offset(0, 5), // Offset of the shadow
                      blurRadius: 10, // Blur radius of the shadow
                      spreadRadius: 2, // Spread radius of the shadow
                    ),
                  ]
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: Image.asset('assets/images/arrow.png'),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        SizedBox(
                          child: Text('Profile',
                            style: h1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 1,
                    ),
                    Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(color: red,
                              width: 0.7),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 17,
                              height: 17,
                              child: Icon(Icons.logout,color: red,size: 15),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Logout',
                              style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'regular',
                                color: red,
                              ),
                            )
                          ],
                        )
                    ),
                  ],
                ),
              ),
            ),



            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:
                  [mentorProfileSelf(name: cardData['mentorName'].toString(),
                    profession: cardData['profession'].toString(),
                    location: cardData['location'].toString(),
                    language: cardData['language'].toString(),
                    personalization: cardData['personalization'].toString(),
                    price: cardData['price'].toString(),
                    gridData: cardData['skills'],
                    skills: skills,
                    ratings: cardData['ratings'].toString(),
                    reviewCount: cardData['reviewCount'].toString(),
                    ratingNumber: ratingNumber,
                  ),
                    Container(
                      color: Colors.white,
                      child: ListView(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: reviews.map((e) => mentorProfileReview(name: e['name'].toString(), rating: double.parse(e['rating'].toString()), review: e['review'].toString()),
                          ).toList()
                      ),
                    )
                  ],

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}