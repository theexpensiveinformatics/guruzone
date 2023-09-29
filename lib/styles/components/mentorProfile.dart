import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/d1Light.dart';
import 'package:guruzone/styles/texts/d2Light.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/texts/h2.dart';

class mentorProfile extends StatelessWidget{
  final String name;
  final String profession;
  final String location;
  final String language;
  final String personalization;
  final String price;
  final Object? gridData;
  final List<String> skills;
  final String ratings;
  final String reviewCount;
  final List<String> ratingNumber;

  const mentorProfile({super.key,
    required this.name,
    required this.profession,
    required this.location,
    required this.language,
    required this.personalization,
    required this.price,
    required this. gridData,
  required this.skills,
    required this.ratings,
    required this.reviewCount,
  required this.ratingNumber});

  final double iconSide = 16.0;
  final double iconText = 6.0;
  final double starContainerHeight = 25;
  final double starContainerWidth = 45;
  final double starContainerBorderRadius = 6;
  final double starSide = 12;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: background,
          height: 200,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffD9D9D9),
                ),
              ),
              Column(
                children: [
                  Text(name,
                  style: h2),
                  Text(profession,
                  style: d1Light,)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 120,
                    height: 36,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Color(0xff0095FF),
                        width: 0.65)
                    ),
                    alignment: Alignment.center,
                    child: Text('Let\'s Chat',
                      style: TextStyle(
                          fontFamily: 'RegularFont',
                          color: Color(0xff0095FF)
                      ),
                    ),
                  ),
                  Container(
                    width: 120,
                    height: 36,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Color(0xff0095FF)),
                        color: Color(0xff0095FF)
                    ),
                    alignment: Alignment.center,
                    child: Text('Pull Request',
                      style: TextStyle(
                          fontFamily: 'RegularFont',
                          color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        Container(
          height: 330,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 25,right: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Information',
                      style: h2,),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: iconSide,
                              height: iconSide,
                              child: Icon(Icons.location_on_outlined,color: blue,size: 18),
                            ),
                            SizedBox(width: iconText,),
                            Text(location,
                            style: d1Light,)
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: iconSide,
                              height: iconSide,
                              child: Image.asset('assets/images/global_blue.png'),
                            ),
                            SizedBox(width: iconText,),
                            Text(language,
                              style: d1Light,)
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: iconSide,
                              height: iconSide,
                              child: Icon(Icons.book_outlined,color: blue,size: 18),
                            ),
                            SizedBox(width: iconText,),
                            Text(personalization,
                              style: d1Light,)
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: iconSide,
                              height: iconSide,
                              child: Icon(Icons.currency_rupee_outlined,color: blue,size: 18,),
                            ),
                            SizedBox(width: iconText,),
                            Text('Starts from ₹'+price+'/hour',
                              style: d1Light,)
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Skill Set',
                      style: h2,
                    ),
                    Container(
                      width: double.infinity,

                      child: GridView.builder(shrinkWrap: true,gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          childAspectRatio: 4,
                          mainAxisSpacing: 10
                        ),
                        itemBuilder: (context,index){
                          return Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border.all(color: Color(0x333D521A)),
                                borderRadius: BorderRadius.circular(8)
                            ),
                            child: Text(skills[index],
                              style: d1,
                            ),
                          );
                        },
                        itemCount: skills.length,
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text('Ratings '+ratings+' ('+reviewCount+')',
                        style: h2,
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: starContainerHeight,
                            width: starContainerWidth,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(starContainerBorderRadius),
                              border: Border.all(color: borderColor1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                              width: starSide,
                                    height: starSide,
                                    child: Icon(Icons.star,color: darkText,size: 15,),
                                ),
                                Text('5',
                                  style: d1Light,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: starContainerHeight,
                            width: starContainerWidth,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(starContainerBorderRadius),
                              border: Border.all(color: borderColor1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: starSide,
                                  height: starSide,
                                  child: Icon(Icons.star,color: darkText,size: 15,),
                                ),
                                Text('4',
                                  style: d1Light,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: starContainerHeight,
                            width: starContainerWidth,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(starContainerBorderRadius),
                              border: Border.all(color: borderColor1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: starSide,
                                  height: starSide,
                                  child: Icon(Icons.star,color: darkText,size: 15,),
                                ),
                                Text('3',
                                  style: d1Light,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: starContainerHeight,
                            width: starContainerWidth,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(starContainerBorderRadius),
                              border: Border.all(color: borderColor1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: starSide,
                                  height: starSide,
                                  child: Icon(Icons.star,color: darkText,size: 15,),
                                ),
                                Text('2',
                                  style: d1Light,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: starContainerHeight,
                            width: starContainerWidth,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(starContainerBorderRadius),
                              border: Border.all(color: borderColor1),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: starSide,
                                  height: starSide,
                                  child: Icon(Icons.star,color: darkText,size: 15,),
                                ),
                                Text('1',
                                  style: d1Light,
                                ),
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }

}