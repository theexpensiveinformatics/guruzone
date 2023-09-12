import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/components/RequestReplyTopContainer.dart';
import 'package:guruzone/styles/components/request_reply_list.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/h1.dart';
import 'package:guruzone/styles/texts/h2.dart';

class RequestReplyScreen extends StatefulWidget{
  @override
  State<RequestReplyScreen> createState() => _RequestReplyScreenState();
}

class _RequestReplyScreenState extends State<RequestReplyScreen> {
  Map<String,String> arrTopContainer =
  {'topic': 'Android App Development',
  'description' : 'Lorem ipsum dolor sit amet consectetur. Urna tortor nisi etiam pharetra senectus. Faucibus sit faucibus.',
  'requestSent' : 'All Tutors',
  'language' : 'English',
  'personalization' : '100% personalized',
  'mode' : 'Offline',
      'location' : 'Vadodara',
  'skill' : 'Development',
  'price' : '100',
};

  var cardData = [
    {
      'mentorName' : 'Riya Patel',
      'profession' : 'IT Engineer',
      'ratings' : 4.7,
      'reviewCount' : 100,
      'location' : 'Vapi, Gujarat',
      'reply': 'I can teach basic to advance app development. Including API calling, Chat app practice... ',
      'duration': 35,
      'advance': '3 hours',
      'price' : 300,
    },
    {
      'mentorName' : 'Riya Patel',
      'profession' : 'IT Engineer',
      'ratings' : 4.7,
      'reviewCount' : 100,
      'location' : 'Vapi, Gujarat',
      'reply': 'I can teach basic to advance app development. Including API calling, Chat app practice... ',
      'duration': 35,
      'advance': '3 hours',
      'price' : 5,
    },
    {
      'mentorName' : 'Riya Patel',
      'profession' : 'IT Engineer',
      'ratings' : 4.7,
      'reviewCount' : 100,
      'location' : 'Vapi, Gujarat',
      'reply': 'I can teach basic to advance app development. Including API calling, Chat app practice... ',
      'duration': 35,
      'advance': '3 hours',
      'price' : 5,
    },
    {
      'mentorName' : 'Riya Patel',
      'profession' : 'IT Engineer',
      'ratings' : 4.7,
      'reviewCount' : 100,
      'location' : 'Vapi, Gujarat',
      'reply': 'I can teach basic to advance app development. Including API calling, Chat app practice... ',
      'duration': 35,
      'advance': '3 hours',
      'price' : 5,
    },
    {
      'mentorName' : 'Riya Patel',
      'profession' : 'IT Engineer',
      'ratings' : 4.7,
      'reviewCount' : 100,
      'location' : 'Vapi, Gujarat',
      'reply': 'I can teach basic to advance app development. Including API calling, Chat app practice... ',
      'duration': 35,
      'advance': '3 hours',
      'price' : 5,
    },
    {
      'mentorName' : 'Riya Patel',
      'profession' : 'IT Engineer',
      'ratings' : 4.7,
      'reviewCount' : 100,
      'location' : 'Vapi, Gujarat',
      'reply': 'I can teach basic to advance app development. Including API calling, Chat app practice... ',
      'duration': 35,
      'advance': '3 hours',
      'price' : 5,
    },
    {
      'mentorName' : 'Riya Patel',
      'profession' : 'IT Engineer',
      'ratings' : 4.7,
      'reviewCount' : 100,
      'location' : 'Vapi, Gujarat',
      'reply': 'I can teach basic to advance app development. Including API calling, Chat app practice... ',
      'duration': 35,
      'advance': '3 hours',
      'price' : 5,
    },
  ];


@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      height: double.infinity,
      width: double.infinity,
      color: Color(0xFFF6F6FB),
      child: Stack(
        children: [
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 300.0,
                floating: false,
                pinned: true,
                snap: false,
                flexibleSpace:
                FlexibleSpaceBar(
                  title: Text('Reply from Tutors',
                      style: TextStyle(
                        fontFamily: 'semibold',
                        fontSize: 14,
                        color: Color(0xFF333D52),
                      )),
                  titlePadding: EdgeInsets.fromLTRB(17,0,0,0),
                  background: RequestReplyTopContainer(
                      topic: arrTopContainer['topic'].toString(),
                      description: arrTopContainer['description'].toString(),
                      requestSent: arrTopContainer['requestSent'].toString(),
                      language: arrTopContainer['language'].toString(),
                      personalization: arrTopContainer['personalization'].toString(),
                      mode: arrTopContainer['mode'].toString(),
                      location: arrTopContainer['location'].toString(),
                      gridData: arrTopContainer['gridView'] as List<String>,
                      price: arrTopContainer['price'].toString()
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                    final item = cardData[index];
                    final mentorName = item['mentorName'].toString();
                    final profession = item['profession'].toString();
                    final ratings = item['ratings'].toString();
                    final reviewCount = item['reviewCount'].toString();
                    final location = item['location'].toString();
                    final reply = item['reply'].toString();
                    final duration = item['duration'].toString();
                    final advance = item['advance'].toString();
                    final price = item['price'].toString();


                    return RequestReplyList(mentorName: mentorName, profession: profession, ratings: ratings, reviewCount: reviewCount, location: location, reply: reply, duration: duration, advance: advance, price: price);
                  },
                  childCount: cardData.length,
                ),
              ),
            ],
          ),
          Positioned(
            top: 24,
            left: 17,
            child: Container(
              width: 22,
                height: 22,
                child: Image.asset('assets/images/arrow.png')
            ),
          ),
        ],
      ),
    ),
  );
}
}
