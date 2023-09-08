import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guruzone/styles/backgrounds/backgroundWhite.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/d1Light.dart';
import 'package:guruzone/styles/texts/d2Light.dart';
import 'package:guruzone/styles/texts/h2.dart';
import 'package:guruzone/styles/texts/r1.dart';

class guruForYou extends StatelessWidget {
  final String mentorName;
  final String post;
  final String rating;
  final String location;
  final String linkedinUrl;
  final String liked;
  final String imgUrl;
  final String reviewsCount;
  final String locationLink;
  final VoidCallback onPressed;


  const guruForYou({super.key, required this.mentorName, required this.post, required this.rating, required this.location, required this.linkedinUrl, required this.liked, required this.imgUrl, required this.reviewsCount, required this.locationLink, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10,bottom: 10,left: 10,right: 10),
      child:
      Container(
        height: 100,
        width: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Row(
              children: [
                Container(
                  height: 54,
                  width: 54,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFEFEFEF),
                        blurRadius: 15,
                        spreadRadius: 5,
                      )
                    ],
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(1000),
                      child: Image.network(
                        fit: BoxFit.fitHeight,
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
                  padding: const EdgeInsets.only(top: 2,left: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('$mentorName',style: h2,),
                      Text('$post',style: d1Light),
                      SizedBox(height: 2,),
                      // Row(
                      //   children: [
                      //     Image.asset('assets/images/location_fill.png',cacheWidth: 13,),
                      //     Padding(
                      //       padding: const EdgeInsets.only(left: 5),
                      //       child: Text('$location',style: d2Light,),
                      //     ),
                      //   ],
                      // ),
                      //
                      // Row(
                      //   children: [
                      //     Image.asset('assets/images/star_fill.png',cacheWidth: 13,),
                      //     Padding(
                      //       padding: const EdgeInsets.only(left: 5),
                      //       child: Text('$rating',style: d2Light,),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ],
            ),

            // Column(
            //   children: [
            //     Container(
            //       decoration: backgroundWhite,
            //       width: 40,
            //       height: 40,
            //     )
            //   ],
            // )

            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Container(
                  width:45,
                  height: 45,
                  decoration: backgroundWhite,
                  child: Icon(Icons.chevron_right,color: lightText,size: 20,)),
            )

          ],
        ),
      ),

    );
  }
}
