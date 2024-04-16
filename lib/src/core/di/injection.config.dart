// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dribble_test/src/core/services/logger.dart' as _i3;
import 'package:dribble_test/src/features/products/services/cubits/products_cubit.dart'
    as _i6;
import 'package:dribble_test/src/features/products/services/providers/products_generator_provider.dart'
    as _i4;
import 'package:dribble_test/src/features/products/services/repositories/products_repository.dart'
    as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.Logger>(() => _i3.Logger());
  gh.factory<_i4.ProductsGeneratorProvider>(
      () => const _i4.ProductsGeneratorProviderImpl());
  gh.factory<_i5.ProductsRepository>(
      () => _i5.ProductsRepositoryImpl(gh<_i4.ProductsGeneratorProvider>()));
  gh.singleton<_i6.ProductsCubit>(
      _i6.ProductsCubitImpl(gh<_i5.ProductsRepository>()));
  return getIt;
}
