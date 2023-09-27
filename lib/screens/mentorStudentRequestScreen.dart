import 'package:flutter/material.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/components/mentorStudentRequestCard.dart';

class mentorStudentRequestScreen extends StatefulWidget{

  @override
  State<mentorStudentRequestScreen> createState() => _mentorStudentRequestScreenState();
}

class _mentorStudentRequestScreenState extends State<mentorStudentRequestScreen> {
  var cardData =[
    {'topic': 'Android App Development',
      'name' : 'Riya Patel',
      'profession' : 'IT Engineer',
      'location' : 'Vadodara',
      'personalization' : '100% personalized',
      'language' : 'English',
      'price' : 150,
    },
    {'topic': 'Android App Development',
      'name' : 'Riya Patel',
      'profession' : 'IT Engineer',
      'location' : 'Vadodara',
      'personalization' : '100% personalized',
      'language' : 'English',
      'price' : 150,
    },
    {'topic': 'Android App Development',
      'name' : 'Riya Patel',
      'profession' : 'IT Engineer',
      'location' : 'Vadodara',
      'personalization' : '100% personalized',
      'language' : 'English',
      'price' : 150,
    },
    {'topic': 'Android App Development',
      'name' : 'Riya Patel',
      'profession' : 'IT Engineer',
      'location' : 'Vadodara',
      'personalization' : '100% personalized',
      'language' : 'English',
      'price' : 150,
    },
    {'topic': 'Android App Development',
      'name' : 'Riya Patel',
      'profession' : 'IT Engineer',
      'location' : 'Vadodara',
      'personalization' : '100% personalized',
      'language' : 'English',
      'price' : 150,
    },
    {'topic': 'Android App Development',
      'name' : 'Riya Patel',
      'profession' : 'IT Engineer',
      'location' : 'Vadodara',
      'personalization' : '100% personalized',
      'language' : 'English',
      'price' : 150,
    },
    {'topic': 'Android App Development',
      'name' : 'Riya Patel',
      'profession' : 'IT Engineer',
      'location' : 'Vadodara',
      'personalization' : '100% personalized',
      'language' : 'English',
      'price' : 150,
    },


  ];

  final double SearchHeight = 42.0;

  final List<String> filterTags = ['All','Flutter','Android','Ui/Ux','M.L.'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: background,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.only(top:30.0,left: 25.0,right: 25.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 25,
                            height: 25,
                            child: Image.asset('assets/images/arrow.png'),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                              child: Text(
                                'Student Requests',
                                style: TextStyle(
                                    fontFamily: 'bold',
                                    fontSize: 18,
                                    color: Color(0xff333D52)
                                ),
                              )
                          )
                        ],
                      ),
                      Container(
                        height: SearchHeight,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: borderColor1),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: SearchHeight,
                              width: SearchHeight,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  child: Image.asset('assets/images/search.png'),
                                ),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width/1.6,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search student,interests, etc',
                                    hintStyle: TextStyle(
                                      fontFamily: 'regular',
                                      color: Color(0xff8A98B1),
                                      fontSize: 14,
                                    )
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 2.0),
                              child: Container(
                                height: SearchHeight-4,
                                width: SearchHeight-4,
                                decoration: BoxDecoration(
                                    color: Color(0xff0095FF),
                                    borderRadius: BorderRadius.circular(6)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset('assets/images/fliter.png'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 32,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: filterTags.length,
                            itemBuilder: (BuildContext context,int index){
                              return Padding(
                                padding: const EdgeInsets.only(right: 6),
                                child: Container(
                                  width: 80,
                                  child: Center(child: Text(filterTags[index])),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(9),
                                      border: Border.all(color: borderColor1)
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: cardData.map((e) => mentorStudentRequestCard(
                      topic: e['topic'].toString(),
                      name: e['name'].toString(),
                      location: e['location'].toString(),
                      profession: e['profession'].toString(),
                      language: e['language'].toString(),
                      personalization: e['personalization'].toString(),
                      price: e['price'].toString(),
                    detailsData: e,
                  )
                  ).toList()
              ),
            ],
          ),
        ),
      ),
    );
  }
}