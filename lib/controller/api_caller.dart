import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:using_apis_in_flutter/model/user.dart';

class MyApiCaller {
  final Dio _dio = Dio();

  // fetch users
  Future<List<User>> fetchUsers({
    required String apiUrl,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      // 1. send the GET request
      final response = await _dio.get(
        apiUrl,
        queryParameters: queryParameters,
      );

      // 2. extract the data from the response
      final List<dynamic> responseData = response.data;

      // 3. convret json to User model
      final List<User> users = responseData
          .map(
            (user) => User.fromJSON(user),
          )
          .toList();

      // 4. return list of users
      return users;
    } catch (e) {
      // Handle any errors
      debugPrint('Error: $e');
      return [];
    }
  }
}
