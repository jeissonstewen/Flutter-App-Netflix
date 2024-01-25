import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  final String title;
  final Color color;
  const TitleSection({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(top: 40),
      child: Text(
      title,
      textAlign: TextAlign.start,
      style: TextStyle(color: color,  fontSize: 22),
      
    ),
    );
  }
}
