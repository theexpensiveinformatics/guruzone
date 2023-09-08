import 'package:flutter/material.dart';
import 'package:guruzone/styles/backgrounds/backgroundWhite.dart';
import 'package:guruzone/styles/backgrounds/roundedBlue.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/texts/blueSmall.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/d1Light.dart';
import 'package:guruzone/styles/texts/h2.dart';
import 'package:guruzone/styles/texts/r1.dart';
import 'package:guruzone/styles/texts/redSmall.dart';

class featuredCourseComponent extends StatelessWidget
{
  final String mentorName;
  final String courseTitle;
  final String rating;
  final String teachingType;
  final String language;
  final String rate;
  final VoidCallback onPressed;
  final String imgUrl;

  const featuredCourseComponent({super.key,required this.courseTitle,
  required this.mentorName,required this.rating,required this.teachingType,required this.language, required this.rate, required this.onPressed,required this.imgUrl
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,

      decoration: backgroundWhite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: background
              ),
              width: double.infinity,
              height: 130,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  '$imgUrl',
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return Center(
                      child: Container(
                        width: 50,
                        child: LinearProgressIndicator(
                          borderRadius: BorderRadius.circular(100),
                          color: blue,

                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 14,right: 14,top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('$mentorName',style: d1Light,overflow: TextOverflow.ellipsis),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/star.png',cacheHeight: 15,),
                    Text('$rating',style:r1,),

                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 14.0,left: 14,top: 1),
            child: Text('$courseTitle',style: h2,overflow: TextOverflow.ellipsis,maxLines: 1,),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 7,left: 14,right: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(width: 130,child: Text('$teachingType',style: teachingType== '100% Personalized' ? blueSmall : redSmall,overflow: TextOverflow.ellipsis)),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/global.png',cacheHeight: 15,cacheWidth: 15,),
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Text('$language',style: d1Light,overflow: TextOverflow.ellipsis),
                        ),
                      ],
                    ),

                  ],
                ),
                Container(height:38,width: 100,decoration: roundedBlue,child: MaterialButton(shape: CircleBorder(eccentricity: 1),onPressed: onPressed,child: Text('$rate\$ / hr',style: TextStyle(color: Colors.white,fontFamily: 'bold',fontSize: 16,overflow: TextOverflow.ellipsis)),))
              ],
            ),
          )

        ],
      ),

    );
  }

}