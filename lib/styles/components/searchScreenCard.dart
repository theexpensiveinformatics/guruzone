import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guruzone/styles/backgrounds/boxTextInput.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/texts/blueRegular.dart';
import 'package:guruzone/styles/texts/blueSmall.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/d1Light.dart';
import 'package:guruzone/styles/texts/h2.dart';
import 'package:guruzone/styles/texts/r1.dart';

class searchScreenCard extends StatelessWidget{
  final String name;
  final String profession;
  final String ratings;
  final String reviewCount;
  final String location;
  final String linkin;
  final String language;
  final String personalization;
  final String price;
  final List<String> skills;

  const searchScreenCard({super.key,
    required this.name,
    required this.profession,
    required this.ratings,
    required this.reviewCount,
    required this.location,
    required this.linkin,
    required this.language,
    required this.personalization,
    required this.price,
    required this.skills});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 9, 15, 9),
      child: Container(

        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 17, 20, 17),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 90,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(13, 0, 16, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name,
                          style: h2
                        ),
                        Text(profession,
                          style: d1Light
                        ),
                        Row(
                          children: [
                            Container(
                                width: 13,
                                height: 13,
                                child: Image.asset('assets/images/star_fill.png')
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(ratings,
                              style: d1,
                            ),
                            Text(' ('+reviewCount+' Reviews)',
                              style: d1
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                                width: 13,
                                height: 13,
                                child: Image.asset('assets/images/location_fill.png')
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Text(location,
                              style: d1
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  Expanded(
                    child: Container(
                      width: 30,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            child: Image.asset('assets/images/linkedin.png'),
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Color(0xff0095FF))
                            ),
                          ),
                          SizedBox(
                            height: 17,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Image.asset('assets/images/heart.png'),
                            ),
                            width: 32,
                            height: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Color(0xffFF7070))
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(

                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 4,bottom: 4,left: 10,right: 10),
                      decoration: boxTextInput,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Image.asset('assets/images/global_blue.png'),
                            width: 15,
                            height: 15,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(language,
                            style:blueSmall
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width/60,),
                    Container(
                      padding: EdgeInsets.only(top: 4,bottom: 4,right: 10,left: 10),
                      decoration: boxTextInput,
                      alignment: Alignment.center,
                      child: Text(personalization,
                        style: blueSmall
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Container(

                    child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 6,childAspectRatio: 3.5,mainAxisSpacing: 6),
                      shrinkWrap: true,

                      itemBuilder: (context,index){
                        return Container(
                          alignment: Alignment.center,
                          height: 10,
                          decoration: BoxDecoration(
                              border: Border.all(color: borderColor),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Text(skills[index],
                            style: d1
                          ),
                        );
                      },
                      itemCount: skills.length,
                    )
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width/3,
                      height: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xff0095FF))
                      ),
                      alignment: Alignment.center,
                      child: Text("From \$"+price+'/hour',
                        style: TextStyle(
                            fontFamily: 'semibold',
                            color: Color(0xff0095FF)
                        ),
                      ),
                    ),
                    Container(
                      width:  MediaQuery.of(context).size.width/3,
                      height: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xff0095FF)),
                          color: Color(0xff0095FF)
                      ),
                      alignment: Alignment.center,
                      child: Text('Pull Request',
                        style: TextStyle(
                            fontFamily: 'semibold',
                            color: Colors.white
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}