// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dw9_delivery_app/app/models/product.dart';

class OrderProductDto {
  final ProductModel product;
  final int amount;

  OrderProductDto({
    required this.product,
    required this.amount,
  });

  double get totalPrice => amount * product.price;

  OrderProductDto copyWith({
    ProductModel? product,
    int? amount,
  }) {
    return OrderProductDto(
      product: product ?? this.product,
      amount: amount ?? this.amount,
    );
  }
}
