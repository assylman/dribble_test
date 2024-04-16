import 'dart:math';

import 'package:dribble_test/src/core/consts/d_assets.dart';
import 'package:dribble_test/src/core/consts/d_constants.dart';
import 'package:dribble_test/src/features/products/models/meta.dart';
import 'package:dribble_test/src/features/products/models/product.dart';
import 'package:dribble_test/src/features/products/models/products.dart';
import 'package:injectable/injectable.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

abstract class ProductsGeneratorProvider {
  const ProductsGeneratorProvider();
  Future<Products?> fetchData(int page, {int perPage = 20});
}

@Injectable(as: ProductsGeneratorProvider)
class ProductsGeneratorProviderImpl extends ProductsGeneratorProvider {
  const ProductsGeneratorProviderImpl();

  @override
  Future<Products?> fetchData(int page, {int perPage = 20}) async {
    final starterId = page * perPage;

    final List<Product> products = [];

    for (int i = 0; i < perPage; i++) {
      final name = loremIpsum(words: _randomizer(1, 2));
      final description = loremIpsum(words: _randomizer(10, 20));
      final price = _randomizer(200, 800).toDouble();
      final product = Product(
        i + 1 + starterId,
        name,
        _randomImageGenerator,
        price,
        description,
        _randomizer(1, 20),
      );

      products.add(product);
    }

    final meta = Meta(page, perPage, maxTotal);

    await Future.delayed(const Duration(seconds: 1));

    return Products(meta: meta, products: products);
  }

  int _randomizer(int min, int max) {
    final rnd = Random();
    return min + rnd.nextInt(max - min);
  }

  String get _randomImageGenerator {
    final imageIndex = _randomizer(1, 7);
    return '${DAssets.bicycleImage}_$imageIndex.png';
  }
}
