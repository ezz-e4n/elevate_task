// import 'package:dartz/dartz.dart';
// import 'package:elevate_test/core/network/api_service.dart';
// import 'package:elevate_test/domain/entities/product.dart';
// import 'package:elevate_test/domain/repositories/product_repository.dart';
// import 'package:elevate_test/core/errors/failures.dart';
// import 'package:injectable/injectable.dart';
//
// @LazySingleton(as: ProductRepository)
// class ProductRepositoryImpl implements ProductRepository {
//   final ApiService apiService;
//
//   ProductRepositoryImpl(this.apiService);
//
//   @override
//   Future<Either<Failure, List<Product>>> getProducts() async {
//     try {
//       final products = await apiService.fetchProducts();
//       return Right(products);
//     } catch (e) {
//       return Left(ServerFailure(e.toString()));
//     }
//   }
// }
import 'package:dartz/dartz.dart';
import 'package:elevate_test/core/error/failures.dart';
import 'package:elevate_test/core/network/api_service.dart';
import 'package:elevate_test/domain/entities/product.dart';
import 'package:elevate_test/domain/repositories/product_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ProductRepository)
class ProductRepositoryImpl implements ProductRepository {
  final ApiService apiService;

  ProductRepositoryImpl(this.apiService);

  @override
  Future<Either<Failure, List<Product>>> getProducts() async {
    try {
      final products = await apiService.fetchProducts();
      return Right(products);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
