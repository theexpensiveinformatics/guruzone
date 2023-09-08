import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guruzone/styles/colors.dart';

class doubtScreen extends StatefulWidget {
  const doubtScreen({super.key});

  @override
  State<doubtScreen> createState() => _doubtScreenState();
}

class _doubtScreenState extends State<doubtScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: background,child: Center(child: Text("doubt"))),
    );
  }
}
