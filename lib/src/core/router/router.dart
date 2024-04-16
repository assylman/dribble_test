//ignore_for_file: public_member_api_docs
import 'package:auto_route/auto_route.dart';

import './router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: HomeWrapperRoute.page,
          children: [
            AutoRoute(
              initial: true,
              page: ProductsView.page,
            ),
          ],
        ),
      ];
}
