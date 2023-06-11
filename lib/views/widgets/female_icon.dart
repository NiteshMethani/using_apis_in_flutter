import 'package:flutter/material.dart';

class FemaleIcon extends StatelessWidget {
  const FemaleIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const ClipOval(
      child: Icon(
        Icons.person_2,
        color: Colors.pink,
      ),
    );
  }
}
