import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shop_app/models/productes.dart';

class GetAllProductesSevices {
  Future<List<ProductesModel>> getAllProductes() async {
    List<ProductesModel> getAllProductes = [];
    http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));
    List<dynamic> data = jsonDecode(response.body);

    for (int i = 0; i < getAllProductes.length; i++) {
      getAllProductes.add(ProductesModel.fromJson(data[i]));
    }
    return getAllProductes;
  }
}
