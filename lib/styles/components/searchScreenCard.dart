import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        height: 291,
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
                          style: TextStyle(
                              color: Color(0xff333D52),
                              fontFamily: 'SemiBoldFont',
                              fontSize: 16
                          ),
                        ),
                        Text(profession,
                          style: TextStyle(
                              color: Color(0xff586172),
                              fontFamily: 'RegularFont'
                          ),
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
                              style: TextStyle(
                                  color: Color(0xff586172),
                                  fontFamily: 'RegularFont'
                              ),
                            ),
                            Text(' ('+reviewCount+' Reviews)',
                              style: TextStyle(
                                  color: Color(0xff586172),
                                  fontFamily: 'RegularFont'
                              ),
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
                              style: TextStyle(
                                  color: Color(0xff586172),
                                  fontFamily: 'RegularFont'
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
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
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 90,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0x333D521A))
                      ),
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
                            style: TextStyle(
                                fontFamily: 'RegularFont',
                                color: Color(0xff0095FF)
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 190,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0x333D521A))
                      ),
                      alignment: Alignment.center,
                      child: Text(personalization,
                        style: TextStyle(
                            fontFamily: 'RegularFont',
                            color: Color(0xff0095FF)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 9),
                child: Container(
                    height: 61,
                    child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, crossAxisSpacing: 6,childAspectRatio: 3.5,mainAxisSpacing: 6),
                      itemBuilder: (context,index){
                        return Container(
                          alignment: Alignment.center,
                          height: 10,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0x333D521A)),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Text(skills[index],
                            style: TextStyle(
                                fontFamily: 'RegularFont',
                                color: Color(0xff333D52)
                            ),),
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
                      width: 140,
                      height: 36,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color(0xff0095FF))
                      ),
                      alignment: Alignment.center,
                      child: Text("From \$"+price+'/hour',
                        style: TextStyle(
                            fontFamily: 'RegularFont',
                            color: Color(0xff0095FF)
                        ),
                      ),
                    ),
                    Container(
                      width: 140,
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
              ),
            ],
          ),
        ),
      ),
    );
  }

}