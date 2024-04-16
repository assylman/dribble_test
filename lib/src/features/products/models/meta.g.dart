// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MetaCWProxy {
  Meta page(int page);

  Meta perPage(int perPage);

  Meta total(int total);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Meta(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Meta(...).copyWith(id: 12, name: "My name")
  /// ````
  Meta call({
    int? page,
    int? perPage,
    int? total,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMeta.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMeta.copyWith.fieldName(...)`
class _$MetaCWProxyImpl implements _$MetaCWProxy {
  const _$MetaCWProxyImpl(this._value);

  final Meta _value;

  @override
  Meta page(int page) => this(page: page);

  @override
  Meta perPage(int perPage) => this(perPage: perPage);

  @override
  Meta total(int total) => this(total: total);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `Meta(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// Meta(...).copyWith(id: 12, name: "My name")
  /// ````
  Meta call({
    Object? page = const $CopyWithPlaceholder(),
    Object? perPage = const $CopyWithPlaceholder(),
    Object? total = const $CopyWithPlaceholder(),
  }) {
    return Meta(
      page == const $CopyWithPlaceholder() || page == null
          ? _value.page
          // ignore: cast_nullable_to_non_nullable
          : page as int,
      perPage == const $CopyWithPlaceholder() || perPage == null
          ? _value.perPage
          // ignore: cast_nullable_to_non_nullable
          : perPage as int,
      total == const $CopyWithPlaceholder() || total == null
          ? _value.total
          // ignore: cast_nullable_to_non_nullable
          : total as int,
    );
  }
}

extension $MetaCopyWith on Meta {
  /// Returns a callable class that can be used as follows: `instanceOfMeta.copyWith(...)` or like so:`instanceOfMeta.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MetaCWProxy get copyWith => _$MetaCWProxyImpl(this);
}
