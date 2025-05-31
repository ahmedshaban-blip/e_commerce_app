class ProductModel {
  final int id;
  final String name;
  final String imageurl;
  final int price;
  final String description;

  ProductModel(
      {required this.id,
      required this.name,
      required this.imageurl,
      required this.price,
      required this.description});
}
