import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:spraklin_products/modules/products/models/products_model.dart';

class Repository {
  static Repository? _instance;

  static Repository getInstance() {
    _instance ??= Repository();
    return _instance!;
  }

  Future<List<Products>> getListOfProducts() async {
    try {
      var url = Uri.parse('https://dummyjson.com/products');
      final response = await http.get(url);
      List<Products> listToReturn = [];
      Map<String, dynamic> mapFromServer = json.decode(response.body);
      List list = mapFromServer['products'];
      return list.map((e) => Products.fromMap(e)).toList();
    } catch (e) {
      print("Exception $e");
      return [];
    }
  }
}
