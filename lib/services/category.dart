import 'package:shop_app/helper/api.dart';
import 'package:shop_app/models/productes.dart';

class CategoriesServices {
  Future<List<ProductesModel>> getCategory(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');

    List<ProductesModel> getAllProductes = [];
    for (int i = 0; i < getAllProductes.length; i++) {
      getAllProductes.add(ProductesModel.fromJson(data[i]));
    }
    return getAllProductes;
  }
}
