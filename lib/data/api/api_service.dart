import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/data/model/article.dart';

class ApiService {
  static final String _baseUrl = 'https://newsapi.org/v2/';
  static final String _apiKey = '599690dd5db44c9fb468bf959007b710';
  static final String _category = 'business';
  static final String _country = 'id';

  Future<ArticlesResult> toHeadlines() async {
    final response = await http.get(Uri.parse(_baseUrl + "top-headlines?country=$_country&category=$_category&apiKey=$_apiKey"));
    if (response.statusCode == 200) {
      return ArticlesResult.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load top headlines');
    }
  }
}