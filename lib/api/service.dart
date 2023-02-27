
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http_provider/api/url.dart';


import '../model/categorymodel.dart';

class Servicess{

  Future<List<CategoryModel>?> getCategories() async {

    var response = await http.get(
        Uri.parse(BaseUrl.getCat),
        headers: {"Accept": "headers/json"});

    if (response.statusCode == 200) {
      return categoriesFromJson(
          json.decode(response.body)
      );
    } else {
      return null;
    }

  }
}