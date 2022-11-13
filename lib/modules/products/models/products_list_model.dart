import 'products_model.dart';

class ProductsList {
  final List<Products> products;

//<editor-fold desc="Data Methods">

  const ProductsList({
    required this.products,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductsList &&
          runtimeType == other.runtimeType &&
          products == other.products);

  @override
  int get hashCode => products.hashCode;

  @override
  String toString() {
    return 'ProductsList{ products: $products,}';
  }

  ProductsList copyWith({
    List<Products>? products,
  }) {
    return ProductsList(
      products: products ?? this.products,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'products': products,
    };
  }

  factory ProductsList.fromMap(Map<String, dynamic> map) {
    return ProductsList(
      products: map['products'] as List<Products>,
    );
  }

//</editor-fold>
}
