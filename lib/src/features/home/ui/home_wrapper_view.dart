import 'package:auto_route/auto_route.dart';
import 'package:dribble_test/src/core/di/injection.dart';
import 'package:dribble_test/src/features/products/services/cubits/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomeWrapperPage extends AutoRouter implements AutoRouteWrapper {
  const HomeWrapperPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ProductsCubit>(
      create: (context) => getIt<ProductsCubit>(),
      child: this,
    );
  }
}
