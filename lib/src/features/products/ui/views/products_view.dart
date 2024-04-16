import 'package:auto_route/auto_route.dart';
import 'package:dribble_test/src/core/consts/d_colors.dart';
import 'package:dribble_test/src/core/widgets/d_progress_indicator.dart';
import 'package:dribble_test/src/core/widgets/empty_list.dart';
import 'package:dribble_test/src/features/products/services/cubits/products_cubit.dart';
import 'package:dribble_test/src/features/products/services/cubits/products_state.dart';
import 'package:dribble_test/src/features/products/ui/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class ProductsView extends StatefulWidget {
  const ProductsView({super.key});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<ProductsCubit>().fetchData();
    _scrollController.addListener(_fetchNext);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DColors.lightBg,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: DColors.white,
        scrolledUnderElevation: 10.0,
        title: Text(
          'MORNRIDE',
          style: TextStyle(
            fontFamily: 'Manrope',
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: RefreshIndicator(
        color: DColors.black,
        onRefresh: () => context.read<ProductsCubit>().fetchData(newFetch: true),
        child: BlocBuilder<ProductsCubit, ProductsState>(
          builder: (context, state) {
            final total = state.products?.meta?.total ?? 0;
            final products = state.products?.products ?? [];

            return ListView.separated(
              physics: const BouncingScrollPhysics(),
              itemCount: products.length + 1,
              controller: _scrollController,
              padding: const EdgeInsets.only(bottom: 30),
              separatorBuilder: (context, index) => Divider(
                indent: 12,
                endIndent: 12,
                color: DColors.grey.withOpacity(0.3),
                thickness: 1,
              ),
              itemBuilder: (_, index) {
                if (index < products.length) {
                  return ProductItem(
                    product: products[index],
                  );
                }

                if (products.length < total) {
                  return const DProgressIndicator();
                }

                return const EmptyList();
              },
            );
          },
        ),
      ),
    );
  }

  void _fetchNext() {
    if (_scrollController.offset >= _scrollController.position.maxScrollExtent && !_scrollController.position.outOfRange) {
      context.read<ProductsCubit>().fetchData();
    }
  }
}
