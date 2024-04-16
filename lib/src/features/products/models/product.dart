import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

part 'product.g.dart';

@CopyWith()
class Product extends Equatable {
  final int id;

  final String name;

  final String image;

  final double price;

  final String description;

  final int stock;

  const Product(
    this.id,
    this.name,
    this.image,
    this.price,
    this.description,
    this.stock,
  );

  @override
  List<Object?> get props => [
        id,
        name,
        image,
        price,
        description,
        stock,
      ];
}
