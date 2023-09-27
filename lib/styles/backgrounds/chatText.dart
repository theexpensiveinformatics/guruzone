import 'package:flutter/material.dart';
import 'package:guruzone/styles/colors.dart';

class chatText extends StatelessWidget {
  final String text;
  final TextStyle style;

  chatText({
    required this.text,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: style,
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
    );
  }
}
