import 'package:flutter/material.dart';
import 'package:spraklin_products/modules/products/models/products_model.dart';

class ListTileWidget extends StatelessWidget {
  final Products products;
  const ListTileWidget({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text("${products.title} - ${products.brand}"),
        subtitle: Text(products.description),
        leading: CircleAvatar(child: Image.network(products.images)),
      ),
    );
  }
}
