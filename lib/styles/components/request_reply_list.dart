import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guruzone/screens/payment.dart';
import 'package:guruzone/screens/paymentScreen.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/d2Light.dart';

class RequestReplyList extends StatelessWidget{
  final String mentorName;
  final String profession;
  final String ratings;
  final String reviewCount;
  final String location;
  final String reply;
  final String duration;
  final String advance;
  final String price;

  const RequestReplyList({super.key,
  required this.mentorName,
  required this.profession,
    required this.ratings,
    required this.reviewCount,
    required this.location,
    required this.reply,
    required this.duration,
    required this.advance,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 9, 15, 9),
      child: Container(
        height: 330,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Color(0x82838A76)),
            borderRadius: BorderRadius.circular(20)
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 17, 20, 17),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 85,
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
                        Text(mentorName,
                          style: TextStyle(
                              color: Color(0xff333D52),
                              fontFamily: 'semibold',
                              fontSize: 16
                          ),
                        ),
                        Text(profession,
                          style: TextStyle(
                              color: Color(0xff586172),
                              fontFamily: 'regular'
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
                                  fontFamily: 'regularFont'
                              ),
                            ),
                            Text(' ('+reviewCount+' Reviews)',
                              style: TextStyle(
                                  color: Color(0xff586172),
                                  fontFamily: 'regularFont'
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
                                  fontFamily: 'regularFont'
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 40,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Image.asset('assets/images/linkedin.png'),
                          ),
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
                            padding: const EdgeInsets.all(4.0),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Reply',
                    style: TextStyle(
                        color: Color(0xff333D52),
                        fontFamily: 'semibold',
                        fontSize: 14,)
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 260,
                        child: Text(reply,
                        style: d2Light,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,),
                      )
                    ],
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Duration : '+duration+' hours',
                      style: TextStyle(
                        color: Color(0xff333D52),
                        fontFamily: 'semibold',
                        fontSize: 14,)
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 260,
                        child: Text('You have to pay the charge of '+advance+' in Advance.',
                          style: d2Light,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,),
                      )
                    ],
                  )
                ],
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
                      child: Text('Message',
                        style: TextStyle(
                            fontFamily: 'RegularFont',
                            color: Color(0xff0095FF)
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>paymentScreen()));},
                      child: Container(
                        width: 140,
                        height: 36,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Color(0xff0095FF)),
                            color: Color(0xff0095FF)
                        ),
                        alignment: Alignment.center,
                        child: Text('Pay ₹'+price,
                          style: TextStyle(
                              fontFamily: 'RegularFont',
                              color: Colors.white
                          ),
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
