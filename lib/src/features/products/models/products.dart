import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:dribble_test/src/features/products/models/meta.dart';
import 'package:dribble_test/src/features/products/models/product.dart';
import 'package:equatable/equatable.dart';

part 'products.g.dart';

@CopyWith()
class Products extends Equatable {
  final Meta? meta;
  final List<Product> products;

  const Products({
    this.meta,
    this.products = const [],
  });

  @override
  List<Object?> get props => [meta, products];
}
