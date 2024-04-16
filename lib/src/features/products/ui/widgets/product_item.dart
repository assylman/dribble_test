import 'package:dribble_test/src/core/consts/d_colors.dart';
import 'package:dribble_test/src/features/products/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88.w,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(6.w),
            child: Image.asset(
              product.image,
              height: 88.w,
              width: 88.w,
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(4.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        product.name.replaceAll('.', ''),
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: DColors.black,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.w),
                        child: Text(
                          '${product.price.toInt().toString()} \$',
                          style: TextStyle(
                            fontFamily: 'Manrope',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: DColors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.description,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'in stock: ${product.stock.toString()}',
                        style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w700,
                          color: product.stock <= 2 ? DColors.red : DColors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
