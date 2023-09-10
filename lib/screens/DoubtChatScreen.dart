import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/components/doubt_list_tile.dart';
import 'package:guruzone/styles/texts/h1.dart';

class DoubtChatScreen extends StatelessWidget{
  final List<Map<String,dynamic>> chatData = [
    {
      'topic' : 'Flutter Dev',
      'message' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi..',
      'count' : 5,
      'time' : '12:30pm',
      'action' : 'onPressed',
    },
    {
      'topic' : 'Flutter Dev',
      'message' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi..',
      'count' : 5,
      'time' : '12:30pm',
      'action' : 'onPressed',
    },
    {
      'topic' : 'Flutter Dev',
      'message' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi..',
      'count' : 5,
      'time' : '12:30pm',
      'action' : 'onPressed',
    },
    {
      'topic' : 'Flutter Dev',
      'message' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi..',
      'count' : 5,
      'time' : '12:30pm',
      'action' : 'onPressed',
    },
    {
      'topic' : 'Flutter Dev',
      'message' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi..',
      'count' : 5,
      'time' : '12:30pm',
      'action' : 'onPressed',
    },
    {
      'topic' : 'Flutter Dev',
      'message' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi..',
      'count' : 5,
      'time' : '12:30pm',
      'action' : 'onPressed',
    },
    {
      'topic' : 'Flutter Dev',
      'message' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi..',
      'count' : 5,
      'time' : '12:30pm',
      'action' : 'onPressed',
    },{
      'topic' : 'Flutter Dev',
      'message' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi..',
      'count' : 5,
      'time' : '12:30pm',
      'action' : 'onPressed',
    },
    {
      'topic' : 'Flutter Dev',
      'message' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi..',
      'count' : 5,
      'time' : '12:30pm',
      'action' : 'onPressed',
    },
    {
      'topic' : 'Flutter Dev',
      'message' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi..',
      'count' : 5,
      'time' : '12:30pm',
      'action' : 'onPressed',
    },
    {
      'topic' : 'Flutter Dev',
      'message' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi..',
      'count' : 5,
      'time' : '12:30pm',
      'action' : 'onPressed',
    },
    {
      'topic' : 'Flutter Dev',
      'message' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi..',
      'count' : 5,
      'time' : '12:30pm',
      'action' : 'onPressed',
    },
    

  ];

  final double iconSide = 20.0;


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
              Padding(
                padding: const EdgeInsets.only(top:10),
                child: Container(
                  height: 90,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(27) ,bottomRight: Radius.circular(27)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3), // Shadow color
                        offset: Offset(0, 3), // Offset of the shadow
                        blurRadius: 3, // Blur radius of the shadow
                        spreadRadius: 2, // Spread radius of the shadow
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: iconSide,
                            height: iconSide,
                            child: Image.asset('assets/images/arrow.png'),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          SizedBox(
                            height: iconSide+10,
                            child: Text('Doubt Solving',
                              style: h1,
                            ),
                          ),
                        ],
                      ),

                        SizedBox(
                          width: 1,
                        ),

                        Row(
                          children: [
                            SizedBox(
                              width: iconSide,
                              height: iconSide,
                              child: Image.asset('assets/images/search_black.png'),
                            ),
                            SizedBox(width: 20,),
                            SizedBox(
                              width: iconSide,
                              height: iconSide,
                              child: Image.asset('assets/images/plus.png'),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: chatData.map((e) => DoubtListTile(topic: e['topic'].toString(),
                    message: e['message'].toString(),
                    count: e['count'].toString(),
                    time: e['time'].toString(),
                action: (){})
                ).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
  
}