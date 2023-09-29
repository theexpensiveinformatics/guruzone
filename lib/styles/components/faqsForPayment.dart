import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/texts/d1.dart';
import 'package:guruzone/styles/texts/d1Light.dart';
import 'package:guruzone/styles/texts/h2.dart';

class faqsForPayment extends StatelessWidget {
  final List<FAQItem> faqs = [
    FAQItem(
      question: 'What is Flutter?',
      answer: 'Flutter is an open-source UI framework created by Google for building natively compiled applications for mobile, web, and desktop from a single codebase.',
    ),
    FAQItem(
      question: 'How do I get started with Flutter?',
      answer: 'To get started with Flutter, you need to install Flutter SDK, set up an IDE (like Android Studio or Visual Studio Code), and create a new Flutter project. Then, you can start writing Dart code to build your app.',
    ),
    FAQItem(
      question: 'What is Flutter?',
      answer: 'Flutter is an open-source UI framework created by Google for building natively compiled applications for mobile, web, and desktop from a single codebase.',
    ),
    FAQItem(
      question: 'How do I get started with Flutter?',
      answer: 'To get started with Flutter, you need to install Flutter SDK, set up an IDE (like Android Studio or Visual Studio Code), and create a new Flutter project. Then, you can start writing Dart code to build your app.',
    ),
    // Add more FAQ items as needed.
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('FAQs',
        style: h2,),
        ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: faqs.map((faq) => FAQTile(faq: faq)).toList(),
        ),
      ],
    );
  }
}

class FAQItem {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});
}

class FAQTile extends StatefulWidget {
  final FAQItem faq;

  FAQTile({required this.faq});

  @override
  _FAQTileState createState() => _FAQTileState();
}

class _FAQTileState extends State<FAQTile> {
  // bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ExpansionTile(
          // shape: null,
          tilePadding: EdgeInsets.zero,
          // collapsedShape: null,
          iconColor: darkText,
            title: Text(widget.faq.question,
            style: d1,),
            children: <Widget>[
              ListTile(title: Text(widget.faq.answer,
              style: d1,)
              ),
            ],
          ),
        Container(
          height: 1,
          width: double.infinity,
          color: Color(0xffD9D9D9),
        )
      ],
    );
  }
}