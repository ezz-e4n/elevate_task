import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:elevate_test/core/error/failures.dart';
import 'package:elevate_test/domain/entities/product.dart';
import 'package:elevate_test/domain/usecases/get_products.dart';
import 'package:elevate_test/presentation/cubit/product_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProductCubit extends Cubit<ProductState> {
  final GetProducts getProducts;

  ProductCubit(this.getProducts) : super(ProductInitial());

  Future<void> fetchProducts() async {
    emit(ProductLoading());
    final Either<Failure, List<Product>> result = await getProducts();

    result.fold(
          (failure) => emit(ProductError(failure.message)), // Handle failure
          (products) => emit(ProductLoaded(products)), // Handle success
    );
  }
}
