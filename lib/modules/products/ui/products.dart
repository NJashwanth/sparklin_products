import 'package:flutter/material.dart';
import 'package:spraklin_products/modules/products/data/repository.dart';
import 'package:spraklin_products/modules/products/models/products_model.dart';
import 'package:spraklin_products/modules/products/ui/widgets/loading_widget.dart';

import 'widgets/list_tile_widget.dart';

class ProductsListScreen extends StatefulWidget {
  const ProductsListScreen({Key? key}) : super(key: key);

  @override
  State<ProductsListScreen> createState() => _ProductsListScreenState();
}

class _ProductsListScreenState extends State<ProductsListScreen> {
  final Repository _repository = Repository.getInstance();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return FutureBuilder<List<Products>>(
        future: _repository.getListOfProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const LoadingWidget();
          }
          return ListView.builder(
            itemBuilder: (context, index) =>
                ListTileWidget(products: snapshot.data![index]),
          );
        });
  }
}
