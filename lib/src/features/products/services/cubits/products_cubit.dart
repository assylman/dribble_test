import 'package:dribble_test/src/core/consts/d_constants.dart';
import 'package:dribble_test/src/core/di/injection.dart';
import 'package:dribble_test/src/core/services/logger.dart';
import 'package:dribble_test/src/features/products/models/products.dart';
import 'package:dribble_test/src/features/products/services/cubits/products_state.dart';
import 'package:dribble_test/src/features/products/services/repositories/products_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

abstract class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(super.state);

  Future<void> fetchData({bool newFetch = false});
}

@Singleton(as: ProductsCubit)
class ProductsCubitImpl extends ProductsCubit {
  final ProductsRepository _repository;

  ProductsCubitImpl(this._repository) : super(const ProductsState());

  ProductsState _current = const ProductsState();

  @override
  Future<void> fetchData({bool newFetch = false}) async {
    /// Fetch new data
    if (newFetch) {
      final data = await _fetchData(0, maxPerPage);

      if (data != null) {
        _current = _current.copyWith(data);
        return emit(_current);
      }
    }

    final products = _current.products;

    /// Fetch next
    int page = products?.meta?.page ?? 0;
    final perPage = products?.meta?.perPage ?? maxPerPage;

    page += 1;

    final data = await _fetchData(page, perPage);
    if (data != null) {
      final newProducts = data.copyWith(products: [
        ...products?.products ?? [],
        ...data.products,
      ]);
      _current = _current.copyWith(newProducts);
      return emit(_current);
    }
  }

  Future<Products?> _fetchData(int page, int perPage) async {
    final data = await _repository.fetchData(page, perPage);

    if (data.object != null) return data.object! as Products;

    if (data.errorMessage != null) getIt<Logger>().error(data.errorMessage);

    return null;
  }
}
