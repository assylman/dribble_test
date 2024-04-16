// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:dribble_test/src/features/home/ui/home_wrapper_view.dart'
    as _i1;
import 'package:dribble_test/src/features/products/ui/views/products_view.dart'
    as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeWrapperRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.WrappedRoute(child: const _i1.HomeWrapperPage()),
      );
    },
    ProductsView.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ProductsView(),
      );
    },
  };
}

/// generated route for
/// [_i1.HomeWrapperPage]
class HomeWrapperRoute extends _i3.PageRouteInfo<void> {
  const HomeWrapperRoute({List<_i3.PageRouteInfo>? children})
      : super(
          HomeWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeWrapperRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ProductsView]
class ProductsView extends _i3.PageRouteInfo<void> {
  const ProductsView({List<_i3.PageRouteInfo>? children})
      : super(
          ProductsView.name,
          initialChildren: children,
        );

  static const String name = 'ProductsView';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
