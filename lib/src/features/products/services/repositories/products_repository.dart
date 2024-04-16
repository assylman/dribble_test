import 'package:dribble_test/src/core/models/app_response.dart';
import 'package:dribble_test/src/features/products/services/providers/products_generator_provider.dart';
import 'package:injectable/injectable.dart';

abstract class ProductsRepository {
  const ProductsRepository();

  Future<AppResponse> fetchData(int page, int perPage);
}

@Injectable(as: ProductsRepository)
class ProductsRepositoryImpl extends ProductsRepository {
  final ProductsGeneratorProvider _provider;

  const ProductsRepositoryImpl(this._provider);

  @override
  Future<AppResponse> fetchData(int page, int perPage) async {
    final data = await _provider.fetchData(page, perPage: perPage);

    if (data != null) return AppResponse.success(data);

    return AppResponse.withError('empty.data');
  }
}
