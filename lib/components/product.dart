// ignore_for_file: public_member_api_docs, sort_constructors_first
class Product {
  late String id;
  late String name;
  late int price;
  late String description;
  late String image;
  late String shop;

  Product(
      this.id, this.name, this.price, this.description, this.image, this.shop);

  @override
  String toString() {
    return 'Product(id: $id, name: $name, price: $price, description: $description, image: $image, shop: $shop)';
  }
}
