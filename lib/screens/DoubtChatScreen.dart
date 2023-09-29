import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:guruzone/screens/chatScreen.dart';
import 'package:guruzone/screens/chatStudentScreen.dart';
import 'package:guruzone/screens/homeBottom.dart';
import 'package:guruzone/screens/homeScreen.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/components/doubt_list_tile.dart';
import 'package:guruzone/styles/texts/h1.dart';

class DoubtChatScreen extends StatelessWidget{
  final List<Map<String,dynamic>> chatData = [
    {
      'topic' : 'Mr, Prashant',
      'message' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi..',
      'count' : 5,
      'time' : '12:30pm',
      'action' : 'onPressed',
    },
    {
      'topic' : 'Mr, Prashant',
      'message' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi..',
      'count' : 5,
      'time' : '12:30pm',
      'action' : 'onPressed',
    },
    {
      'topic' : 'Mr, Prashant',
      'message' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi..',
      'count' : 5,
      'time' : '12:30pm',
      'action' : 'onPressed',
    },
    {
      'topic' : 'Mr, Prashant',
      'message' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi..',
      'count' : 5,
      'time' : '12:30pm',
      'action' : 'onPressed',
    },
    {
      'topic' : 'Mr, Prashant',
      'message' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi..',
      'count' : 5,
      'time' : '12:30pm',
      'action' : 'onPressed',
    },{
      'topic' : 'Mr, Prashant',
      'message' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi..',
      'count' : 5,
      'time' : '12:30pm',
      'action' : 'onPressed',
    },
    {
      'topic' : 'Mr, Prashant',
      'message' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi..',
      'count' : 5,
      'time' : '12:30pm',
      'action' : 'onPressed',
    },
    {
      'topic' : 'Mr, Prashant',
      'message' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi..',
      'count' : 5,
      'time' : '12:30pm',
      'action' : 'onPressed',
    },
    {
      'topic' : 'Mr, Prashant',
      'message' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi..',
      'count' : 5,
      'time' : '12:30pm',
      'action' : 'onPressed',
    },
    {
      'topic' : 'Mr, Prashant',
      'message' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi..',
      'count' : 5,
      'time' : '12:30pm',
      'action' : 'onPressed',
    },{
      'topic' : 'Mr, Prashant',
      'message' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi..',
      'count' : 5,
      'time' : '12:30pm',
      'action' : 'onPressed',
    },
    {
      'topic' : 'Mr, Prashant',
      'message' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi..',
      'count' : 5,
      'time' : '12:30pm',
      'action' : 'onPressed',
    },
    {
      'topic' : 'Mr, Prashant',
      'message' : 'Lorem ipsum dolor sit amet consectetur adipiscing elit Ut et massa mi..',
      'count' : 5,
      'time' : '12:30pm',
      'action' : 'onPressed',
    },
    {
      'topic' : 'Mr, Prashant',
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:0),
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(27) ,bottomRight: Radius.circular(27)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1), // Shadow color
                      offset: Offset(0, 5), // Offset of the shadow
                      blurRadius: 10, // Blur radius of the shadow
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
                          child: Image.asset('assets/images/arrow.png',color: darkText,),
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
                          child: Icon(Icons.search_rounded,color:darkText,)
                        ),
                        SizedBox(width: 20,),
                        SizedBox(
                          width: iconSide,
                          height: iconSide,
                          child: Icon(Icons.add,color: darkText,)
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  child: InkWell(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));
                    },
                    child: ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: chatData.map((e) => DoubtListTile(topic: e['topic'].toString(),
                          message: e['message'].toString(),
                          count: e['count'].toString(),
                          time: e['time'].toString(),
                      action: (){})
                      ).toList(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}