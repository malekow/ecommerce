class products {
  final String name;
  final String image;
  final double price;
  final String description;

  products({
    required this.name,
    required this.image,
    required this.price,
    required this.description,
  });
}

List<products> listproducts = [
  products(
      name: 'Hijab',
      image: 'assets/products/hijab1.png',
      price: 10,
      description: 'description'),
  products(
      name: 'samsung',
      image: 'assets/products/samsung1.png',
      price: 10,
      description: 'description'),
  products(
      name: 'shirts',
      image: 'assets/products/shirt12.PNG',
      price: 10,
      description: 'description'),
  products(
      name: 'shoes',
      image: 'assets/products/shoes2.PNG',
      price: 10,
      description: 'description')
];
