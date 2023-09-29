import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guruzone/styles/backgrounds/backgroundWhite.dart';
import 'package:guruzone/styles/backgrounds/roundedBlue.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/d1Light.dart';
import 'package:guruzone/styles/texts/d2Light.dart';
import 'package:guruzone/styles/texts/h2.dart';

class searchCard extends StatelessWidget {

  final String name;
  final String profession;
  final String location;
  final String rating;
  final String reviewCount;
  final String linkedin;
  final String language;
  final String teachingType;
  final String rate;
  final VoidCallback onPressed;
  final String liked;
  final String imgUrl;

  const searchCard ({super.key, required this.name, required this.profession, required this.location, required this.rating, required this.reviewCount, required this.linkedin, required this.language, required this.teachingType, required this.rate, required this.onPressed, required this.liked, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: backgroundWhite,
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 95,
                width: 95,
                decoration: BoxDecoration(
                  color: background,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    fit: BoxFit.fitHeight,
                    '$imgUrl',filterQuality: FilterQuality.low,
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

              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('$name',style: h2,),
                    Text('$profession',style: d1Light,),
                    SizedBox(height: 5,),

                    Row(
                      children: [
                        Image.asset('assets/images/star_fill.png',cacheWidth: 13,),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text('$rating',style: d2Light,),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text('($reviewCount)',style: d2Light,),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/location_fill.png',cacheWidth: 13,),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text('$location',style: d2Light,),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}


