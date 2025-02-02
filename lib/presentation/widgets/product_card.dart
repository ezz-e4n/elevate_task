import 'package:elevate_test/domain/entities/product.dart';
import 'package:flutter/material.dart';
class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(product.image, height: 100, fit: BoxFit.cover),
          Text(product.title, maxLines: 1, overflow: TextOverflow.ellipsis,textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold),),
          Text('EGP ${product.price}'),
          Text('⭐ ${product.rating}'),
        ],
      ),
    );
  }
}
