import 'package:flutter/material.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 15,
        color: Colors.black.withOpacity(0.8),
        height: 1.5,
      ),
      textAlign: TextAlign.justify,
    );
  }
}
