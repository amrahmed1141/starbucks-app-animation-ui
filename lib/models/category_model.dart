class Category {
  final String image, name;
  Category({required this.image, required this.name});
}

List<Category> categories = [
  Category(image: 'category/coffee.png', name: 'Hot Coffee'),
  Category(image: 'category/drinks.png', name: 'Drinks'),
  Category(image: 'category/tea.png', name: 'Hot Teas'),
  Category(image: 'category/bakery.png', name: 'Bakery'),
];
