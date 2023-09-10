import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/d2Light.dart';
import 'package:guruzone/styles/texts/h2.dart';

class DoubtListTile extends StatelessWidget{
  final String topic;
  final String message;
  final String count;
  final String time;
  final VoidCallback action;

  const DoubtListTile({super.key,
    required this.topic,
  required this.message,
  required this.count,
  required this.time,
  required this.action});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 7.5, 15, 7.5),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color(0xffC4C4C4),
                ),
              ),
              Container(
                width: 190,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(topic),
                    Text(message,
                    style: d2Light,
                    overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        softWrap: true,)
                  ],
                ),
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: blue,
                    radius: 12,
                    child: Text(count,
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'regular',
                        color: Colors.white
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(time,
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: 'regular',
                      fontWeight: FontWeight.w700,
                    ),),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            height: 1,
            color: Color(0xffC4C4C4),
          ),
        ],
      ),
    );
  }
}