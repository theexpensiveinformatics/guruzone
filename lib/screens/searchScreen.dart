import 'package:flutter/material.dart';

import 'package:guruzone/styles/components/searchScreenCard.dart';

import 'package:guruzone/styles/components/searchCard.dart';




class searchScreen extends StatefulWidget{
  @override
  State<searchScreen> createState() => _searchScreenState();
}

class _searchScreenState extends State<searchScreen> {

  var cardData = [
    {
      'name' : 'Riya Patel',
      'profession' : 'IT Engineer',
      'ratings' : 4.7,
      'reviewCount' : 100,
      'location' : 'Vapi, Gujarat',
      'linkin' : 'https://in.linkedin.com',
      'language' : 'English',
      'personalization' : '100% Personalized',
      'skills' : ['Flutter','Android','Java','M.L.','Node.js'],
      'price' : 5,

    },
  ];

  var SearchHeight = 40.0;

  var filterTags = ['All','Flutter','Android','Ui/Ux'];


  // var arrSearch = [
  //   {
  //     'name' : 'Riya Patel',
  //     'profession' : 'IT Engineer',
  //     'rating' : 4.7,
  //     'reviewCount' : 100,
  //     'location' : 'Vapi, Gujarat',
  //     'linkin' : 'https://in.linkedin.com',
  //     'language' : 'English',
  //     'teachingType' : '100% Personalized',
  //     'rate' : 5,
  //     'imgUrl':'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcT102smwP3i_8JvPTdQLKx3s9FQl42bP6q5HIzKoWGMchz0s3EMOYAGCgPkz-QrQ4IOxARMChyDj0WBgQ4',
  //     'liked' : 'true',
  //   },
  //   {
  //     'name' : 'Riya Patel',
  //     'profession' : 'IT Engineer',
  //     'rating' : 4.7,
  //     'reviewCount' : 100,
  //     'location' : 'Vapi, Gujarat',
  //     'linkin' : 'https://in.linkedin.com',
  //     'language' : 'English',
  //     'teachingType' : 'Partially Personalized',
  //     'rate' : 5,
  //     'imgUrl':'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcT102smwP3i_8JvPTdQLKx3s9FQl42bP6q5HIzKoWGMchz0s3EMOYAGCgPkz-QrQ4IOxARMChyDj0WBgQ4',
  //     'liked' : 'true',
  //   }
  // ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color(0xB5B6C2DF),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 180,
                child: Padding(
                  padding: const EdgeInsets.only(top:25.0,left: 15.0,right: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Row(
                            children: [
                              Container(
                                width: 25,
                                height: 25,
                                child: Image.asset('assets/icons/Arrow.png'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                  child: Text(
                                    'Search Your Guru',
                                    style: TextStyle(
                                        fontFamily: 'BoldFont',
                                        fontSize: 18,
                                        color: Color(0xff333D52)
                                    ),
                                  )
                              )
                            ],
                          )
                      ),
                      Container(
                        height: SearchHeight,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Color(0xffABABAB)),
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
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  child: Image.asset('assets/icons/Vectorguru.png'),
                                ),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 245,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Send Request to All Mentors',
                                    labelStyle: TextStyle(
                                      fontFamily: 'RegularFont',
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
                                  child: Container(
                                    child: Image.asset('assets/icons/Vectormentor.png'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: SearchHeight,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Color(0xffABABAB)),
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
                                padding: const EdgeInsets.all(9.0),
                                child: Container(
                                  child: Image.asset('assets/icons/Search.png'),
                                ),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 245,
                              child: TextField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Search Mentors, skills , etc',
                                    labelStyle: TextStyle(
                                      fontFamily: 'RegularFont',
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
                                  child: Container(
                                    child: Image.asset('assets/icons/fliter.png'),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 30,
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
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(color: Color(0xffABABAB))
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                ),
              ),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
                final item = cardData[index];
                final name = item['name'].toString();
                final profession = item['ratings'].toString();
                final ratings = item['ratings'].toString();
                final reviewCount = item['reviewCount'].toString();
                final location = item['location'].toString();
                final linkin = item['linkin'].toString();
                final language = item['language'].toString();
                final personalization = item['personalization'].toString();
                final gridData = item['skills'];
                final price = item['price'].toString();

                return searchScreenCard(name: name, profession: profession, ratings: ratings, reviewCount: reviewCount, location: location, linkin: linkin, language: language, personalization: personalization, gridData: gridData, price: price);
            }
              )
            ],
          ),
        ),
      ),

      // body:
        // Container(
      //   height: double.infinity,
      //     width: double.infinity,
      //     color: background,
      //     child:Column(
      //       children: [
      //         ListView(
      //           shrinkWrap: true,
      //           children: arrSearch.map((e) => Container(
      //            // height: 150,
      //            width: double.infinity,
      //            padding: EdgeInsets.only(right: 25,left: 25,top: 10),
      //             child: searchCard(onPressed: (){},name: e['name'].toString(),location: e['location'].toString(),rating: e['rating'].toString(),teachingType: e['teachingType'].toString(),rate: e['rate'].toString(),language: e['language'].toString(),linkedin: e['linkedin'].toString(),profession: e['profession'].toString(),reviewCount: e['reviewCount'].toString(), liked: e['liked'].toString(), imgUrl: e['imgUrl'].toString(),),
      //           )).toList(),
      //         )
      //       ],
      //     )
      // ),

    );
  }
}