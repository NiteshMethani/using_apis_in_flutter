import 'package:flutter/material.dart';

class MaleIcon extends StatelessWidget {
  const MaleIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const ClipOval(
      child: Icon(
        Icons.person,
        color: Colors.blue,
      ),
    );
  }
}
