// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductsCWProxy {
  Products meta(Meta? meta);

  Products products(List<Product> products);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Products(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Products(...).copyWith(id: 12, name: "My name")
  /// ````
  Products call({
    Meta? meta,
    List<Product>? products,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfProducts.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfProducts.copyWith.fieldName(...)`
class _$ProductsCWProxyImpl implements _$ProductsCWProxy {
  const _$ProductsCWProxyImpl(this._value);

  final Products _value;

  @override
  Products meta(Meta? meta) => this(meta: meta);

  @override
  Products products(List<Product> products) => this(products: products);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Products(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Products(...).copyWith(id: 12, name: "My name")
  /// ````
  Products call({
    Object? meta = const $CopyWithPlaceholder(),
    Object? products = const $CopyWithPlaceholder(),
  }) {
    return Products(
      meta: meta == const $CopyWithPlaceholder()
          ? _value.meta
          // ignore: cast_nullable_to_non_nullable
          : meta as Meta?,
      products: products == const $CopyWithPlaceholder() || products == null
          ? _value.products
          // ignore: cast_nullable_to_non_nullable
          : products as List<Product>,
    );
  }
}

extension $ProductsCopyWith on Products {
  /// Returns a callable class that can be used as follows: `instanceOfProducts.copyWith(...)` or like so:`instanceOfProducts.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductsCWProxy get copyWith => _$ProductsCWProxyImpl(this);
}
