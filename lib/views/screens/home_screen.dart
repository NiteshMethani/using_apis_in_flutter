import 'package:flutter/material.dart';
import 'package:using_apis_in_flutter/constants/app_endpoints.dart';
import 'package:using_apis_in_flutter/controller/api_caller.dart';
import 'package:using_apis_in_flutter/model/user.dart';
import 'package:using_apis_in_flutter/views/screens/all_users_screen.dart';
import 'package:using_apis_in_flutter/views/widgets/description_widget.dart';
import 'package:using_apis_in_flutter/views/widgets/title_widget.dart';
import 'package:using_apis_in_flutter/views/widgets/trailing_icon.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final MyApiCaller apiCaller = MyApiCaller();

  @override
  Widget build(BuildContext context) {
    const String tutorialTitle = "Flutter API Demo";
    const String tutorialDescription =
        "Unlock the power of API integration in Flutter with your app. Learn how to leverage the Dio package to make seamless API calls, fetch data, and supercharge your app's functionality. Master the art of network communication and take your Flutter development skills to new heights";

    // * helper function to navigate to new screen.
    void pushToNewRoute(route) => Navigator.push(context, route);

    void callAPI({
      required String url,
      required Map<String, dynamic> queryParams,
      required String nextScreenTitle,
    }) async {
      // 1. call the api
      List<User> users = await apiCaller.fetchUsers(
        apiUrl: url,
        queryParameters: queryParams,
      );

      // 2. shuffle the returned users list for fun
      users.shuffle();

      // 3. create a new route which will show all users
      var route = MaterialPageRoute(
        builder: (context) =>
            AllUsersScreen(users: users, title: nextScreenTitle),
      );

      // 4. navigate to new route
      // We should not call Navigator in the `async` method. Hence, we create a new function and pass the route.
      pushToNewRoute(route);
    }

    return Scaffold(
      // * App Bar
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const TitleWidget(text: tutorialTitle),
      ),

      // * App body
      body: ListView(
        padding: const EdgeInsets.all(20),
        physics: const BouncingScrollPhysics(),
        children: [
          // * Tutorial description
          const DescriptionWidget(text: tutorialDescription),

          // * Add some vertical space
          const SizedBox(height: 20),

          // * Demo 1: Fetch all users
          ListTile(
            onTap: () => callAPI(
              url: AppEndpoints.allUsers,
              queryParams: {},
              nextScreenTitle: "All Users",
            ),
            title: const TitleWidget(text: "Fetch all users"),
            subtitle: const Text("We'll learn how to call an API."),
            trailing: const TrailingIcon(),
          ),

          // * Demo 2: Fetch only active users
          ListTile(
            onTap: () => callAPI(
              url: AppEndpoints.allUsers,
              queryParams: {'status': 'active'},
              nextScreenTitle: "Active Users",
            ),
            title: const TitleWidget(text: "Fetch active users only"),
            subtitle: const Text("We'll learn how to pass query paramters."),
            trailing: const TrailingIcon(),
          ),
        ],
      ),
    );
  }
}
