import 'package:flutter/material.dart';
import 'package:shopping_app/Widgets/product.dart';

class ProductRow extends StatelessWidget {
  const ProductRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProductBlock(0),
        ProductBlock(1),
      ],
    );
  }
}
