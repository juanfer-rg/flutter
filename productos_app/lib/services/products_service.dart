import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:productos_app/models/models.dart';
import 'package:http/http.dart' as http;

class ProductServices extends ChangeNotifier {
  final String _baseUrl = 'flutter-varios-7609c-default-rtdb.firebaseio.com';
  final List<Product> products = [];
  bool isLoading = true;

  ProductServices() {
    this.loadProudct();
  }

  Future<List<Product>> loadProudct() async {
    this.isLoading = true;
    notifyListeners();
    final url = Uri.https(_baseUrl, 'products.json');
    final resp = await http.get(url);
    final Map<String, dynamic> productsMap = jsonDecode(resp.body);
    productsMap.forEach((key, value) {
      final tempProduct = Product.fromMap(value);
      tempProduct.id = key;
      this.products.add(tempProduct);
    });
    this.isLoading = false;

    notifyListeners();

    return this.products;
  }
}
