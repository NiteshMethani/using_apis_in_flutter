import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TrailingIcon extends StatelessWidget {
  const TrailingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(
      CupertinoIcons.chevron_right,
      color: Colors.black,
      size: 20,
    );
  }
}
