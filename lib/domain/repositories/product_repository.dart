import 'package:dartz/dartz.dart';
import 'package:elevate_test/core/error/failures.dart';
import '../entities/product.dart';

abstract class ProductRepository {
  Future<Either<Failure, List<Product>>> getProducts();
}
