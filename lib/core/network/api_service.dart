import 'package:dio/dio.dart';
import 'package:elevate_test/data/models/product_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class ApiService {
  final Dio _dio;

  ApiService(this._dio);
  Future<List<ProductModel>> fetchProducts() async {
    try {
      final response = await _dio.get('https://fakestoreapi.com/products');
      return (response.data as List).map((e) => ProductModel.fromJson(e)).toList();
    } catch (e) {
      if (e is DioException) {
        throw Exception('API Error: ${e.response?.statusCode} - ${e.message}');
      } else {
        throw Exception('Unexpected Error: $e');
      }
    }
  }
}
