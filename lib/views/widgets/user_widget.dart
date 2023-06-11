import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:using_apis_in_flutter/model/user.dart';
import 'package:using_apis_in_flutter/views/widgets/female_icon.dart';
import 'package:using_apis_in_flutter/views/widgets/male_icon.dart';

class UserWidget extends StatelessWidget {
  const UserWidget({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    bool isMale = user.gender.toLowerCase() == "male";
    bool isActive = user.status.toLowerCase() == "active";
    return ListTile(
      // * show user profile picture
      leading: ClipOval(
        child: isMale ? const MaleIcon() : const FemaleIcon(),
      ),

      // * show title
      title: Text(user.name),

      // * show user email
      subtitle: Text(
        user.email,
        style: const TextStyle(fontSize: 12),
      ),

      // * show active/inactive icon
      trailing: Icon(
        Icons.circle,
        color: isActive
            ? CupertinoColors.systemGreen
            : CupertinoColors.systemGrey3,
        size: 12,
      ),
    );
  }
}
