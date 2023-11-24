
// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:platform_myhrakii/src/model/homescreen_model.dart';

Future<List<HomeCategroyModel>> fetchCategories() async {
  final response = await http.get(Uri.parse('https://dev-api.myhraki.com/web/productgen/api/v1/category/All'));
  if (response.statusCode == 200) {
    final List<dynamic> responseData = json.decode(response.body);
    print("API Response: $responseData");
    List<HomeCategroyModel> categories = [];
    responseData.forEach((category) {
      categories.add(HomeCategroyModel.fromJson(category));
    });
    return categories;
  } else {
    throw Exception('Failed to load categories');
  }
}
