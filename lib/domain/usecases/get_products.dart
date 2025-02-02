import 'package:dartz/dartz.dart';
import 'package:elevate_test/core/error/failures.dart';
import 'package:injectable/injectable.dart';

import '../entities/product.dart';
import '../repositories/product_repository.dart';

@injectable
class GetProducts {
  final ProductRepository repository;

  GetProducts(this.repository);

  Future<Either<Failure, List<Product>>> call() {
    return repository.getProducts();
  }
}
