class Products {
  final String title;
  final String description;
  final String brand;
  final String images;

//<editor-fold desc="Data Methods">

  const Products({
    required this.title,
    required this.description,
    required this.brand,
    required this.images,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Products &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          description == other.description &&
          brand == other.brand &&
          images == other.images);

  @override
  int get hashCode =>
      title.hashCode ^ description.hashCode ^ brand.hashCode ^ images.hashCode;

  @override
  String toString() {
    return 'Products{' +
        ' title: $title,' +
        ' description: $description,' +
        ' brand: $brand,' +
        ' images: $images,' +
        '}';
  }

  Products copyWith({
    String? title,
    String? description,
    String? brand,
    String? images,
  }) {
    return Products(
      title: title ?? this.title,
      description: description ?? this.description,
      brand: brand ?? this.brand,
      images: images ?? this.images,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': this.title,
      'description': this.description,
      'brand': this.brand,
      'images': this.images,
    };
  }

  factory Products.fromMap(Map<String, dynamic> map) {
    return Products(
      title: map['title'] as String,
      description: map['description'] as String,
      brand: map['brand'] as String,
      images: map['images'][0] as String,
    );
  }

//</editor-fold>
}
