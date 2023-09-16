import 'package:flutter/material.dart';
import 'package:guruzone/styles/colors.dart';

class chatAnswerContainer extends StatelessWidget {
  final Widget child;
  final double borderRadius;

  chatAnswerContainer({
    required this.child,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        alignment: Alignment.bottomLeft,
        child: Container(
          width: MediaQuery.of(context).size.width/1.5,
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: child,
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(borderRadius),topLeft: Radius.circular(borderRadius),bottomRight: Radius.circular(borderRadius)),
            boxShadow: [
              BoxShadow(
                color: Color(0xffdedede), // Specify the color of the shadow
                offset: Offset(0, 4), // Specify the offset of the shadow
                blurRadius:20, // Specify the blur radius of the shadow
                spreadRadius: 0, // Specify the spread radius of the shadow
              ),
            ],
          ),
        ),
      ),
    );
  }
}
