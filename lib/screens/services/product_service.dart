import 'package:dio/dio.dart';
import 'package:touch_world_project/model/product_model.dart';

class ProductService {
  final dio = Dio();

  Future<List<ProductsModel>> getProducts() async {
    try {
      final response = await dio.get(
          'http://testapp.touchworldtechnology.com:3009/v1/product/getAllProduct');

      final data = response.data['data'];
      final List<ProductsModel> productData = [];
      for (var product in data) {
        productData.add(ProductsModel.fromJson(product));
      }
      return productData;
    } on DioException catch (e) {
      throw e.response.toString();
    }
  }
}
