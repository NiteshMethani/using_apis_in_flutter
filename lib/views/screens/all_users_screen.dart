import 'package:flutter/material.dart';
import 'package:using_apis_in_flutter/model/user.dart';
import 'package:using_apis_in_flutter/views/widgets/title_widget.dart';
import 'package:using_apis_in_flutter/views/widgets/user_widget.dart';

class AllUsersScreen extends StatelessWidget {
  const AllUsersScreen({
    super.key,
    required this.users,
    required this.title,
  });
  final List<User> users;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // * App Bar
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: TitleWidget(text: title),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        physics: const BouncingScrollPhysics(),
        itemCount: users.length,
        itemBuilder: (context, index) => UserWidget(user: users[index]),
      ),
    );
  }
}
