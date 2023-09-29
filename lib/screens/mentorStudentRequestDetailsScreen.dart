import 'package:flutter/material.dart';
import 'package:guruzone/styles/colors.dart';
import 'package:guruzone/styles/components/mentorStudentRequestDetailsContainer.dart';

class mentorStudentRequestDeatilsScreen extends StatefulWidget {
  final Map arrTopContainer;

  const mentorStudentRequestDeatilsScreen({
    Key? key,
    required this.arrTopContainer,
  }) : super(key: key);

  @override
  State<mentorStudentRequestDeatilsScreen> createState() =>
      _mentorStudentRequestDeatilsScreenState();
}

class _mentorStudentRequestDeatilsScreenState
    extends State<mentorStudentRequestDeatilsScreen> {
  @override
  Widget build(BuildContext context) {
    final arrTopContainer = widget.arrTopContainer;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: background, // Change 'background' to your desired color
        child: Padding(
          padding: const EdgeInsets.only(bottom: 280),
          child: mentorStudentRequestDetailsContainer(
            topic: arrTopContainer['topic'].toString(),
            studentName: arrTopContainer['studentName'].toString(),
            description: arrTopContainer['description'].toString(),
            mode: arrTopContainer['mode'].toString(),
            personalization: arrTopContainer['personalization'].toString(),
            language: arrTopContainer['language'].toString(),
            price: arrTopContainer['price'].toString(),
            profession: arrTopContainer['profession'].toString(),
          ),
        ),
      ),
    );
  }
}
