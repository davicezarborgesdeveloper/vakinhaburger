// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dw9_delivery_app/app/core/ui/styles/colors_app.dart';
import 'package:dw9_delivery_app/app/core/ui/styles/text_styles.dart';
import 'package:dw9_delivery_app/app/core/ui/widgets/delivery_increment_decrement_button.dart';
import 'package:flutter/material.dart';

import 'package:dw9_delivery_app/app/dto/order_product_dto.dart';

class OrderProductTitle extends StatelessWidget {
  final int index;
  final OrderProductDto orderProduct;

  const OrderProductTitle({
    Key? key,
    required this.index,
    required this.orderProduct,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Image.network(
            'src',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '',
                  style: context.textStyles.textRegular.copyWith(
                    fontSize: 16,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '19,90',
                      style: context.textStyles.textMedium.copyWith(
                        fontSize: 14,
                        color: context.colors.secondary,
                      ),
                    ),
                    DeliveryIncrementDecrementButton.compact(
                        amount: 1, incrementTap: () {}, decrementTap: () {}),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
