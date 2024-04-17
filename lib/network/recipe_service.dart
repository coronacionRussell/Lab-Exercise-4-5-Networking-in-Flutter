import 'dart:developer';
import 'package:http/http.dart';
const String apiKey = 'cd00d445865fff742914ed6c62c45a3a';
const String apiId = '21e4c8c2';
const String apiUrl = 'https://api.edamam.com/search';
class RecipeService {
 // 1
 Future getData(String url) async {
 // 2
 final response = await get(Uri.parse(url));
 // 3
 if (response.statusCode == 200) {
 // 4
 return response.body;
 } else {
 // 5
 log(response.body);
 }
 }
 // 1
Future<dynamic> getRecipes(String query, int from, int to) async
{
 // 2
 final recipeData = await getData(
 '$apiUrl?app_id=$apiId&app_key=$apiKey&q=$query&from=$from&to=$to');
 // 3
 return recipeData;
}
}