// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:elevate_test/core/di/app_module.dart' as _i839;
import 'package:elevate_test/core/network/api_service.dart' as _i995;
import 'package:elevate_test/data/repositories/product_repository_impl.dart'
    as _i759;
import 'package:elevate_test/domain/repositories/product_repository.dart'
    as _i400;
import 'package:elevate_test/domain/usecases/get_products.dart' as _i778;
import 'package:elevate_test/presentation/cubit/product_cubit.dart' as _i133;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.lazySingleton<_i361.Dio>(() => appModule.dio);
    gh.factory<_i995.ApiService>(() => _i995.ApiService(gh<_i361.Dio>()));
    gh.lazySingleton<_i400.ProductRepository>(
        () => _i759.ProductRepositoryImpl(gh<_i995.ApiService>()));
    gh.factory<_i778.GetProducts>(
        () => _i778.GetProducts(gh<_i400.ProductRepository>()));
    gh.factory<_i133.ProductCubit>(
        () => _i133.ProductCubit(gh<_i778.GetProducts>()));
    return this;
  }
}

class _$AppModule extends _i839.AppModule {}
