import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/texts/d1Bold.dart';
import 'package:guruzone/styles/texts/d2Light.dart';
import 'package:guruzone/styles/texts/h2.dart';

class mentorProfileReview extends StatelessWidget{
  final String name;
  final double rating;
  final String review;

  const mentorProfileReview({super.key,
  required this.name,
    required this.rating,
  required this.review});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 0, 25, 19),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: borderColor1),
          borderRadius: BorderRadius.circular(20),
        ),
        height: 140,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey,
                  ),
                  Column(
                    children: [
                      Text('Riya Patel',
                      style: d1Bold,
                      ),
                      StarRating(rating: rating),
                    ],
                  )
                ],
              ),
              Text(review,
              style: TextStyle(
                fontFamily: 'regular',
                color: lightText,
                fontSize: 13,
                height: 1.2,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 4,)
            ],
          ),
        ),
      ),
    );
  }
}

class StarRating extends StatelessWidget {
  final double rating;
  final double size;
  final Color color;

  StarRating({
    required this.rating,
    this.size = 15.0,
    this.color = Colors.orange,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        if (index < rating) {
          return Icon(
            Icons.star,
            size: size,
            color: color,
          );
        } else {
          return Icon(
            Icons.star_border,
            size: size,
            color: color,
          );
        }
      }),
    );
  }
}