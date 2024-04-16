import 'package:dribble_test/src/features/products/models/products.dart';
import 'package:equatable/equatable.dart';

class ProductsState extends Equatable {
  final Products? products;

  const ProductsState({this.products});

  ProductsState copyWith(
    Products? products,
  ) =>
      ProductsState(
        products: products ?? this.products,
      );

  @override
  List<Object?> get props => [products];
}
