import '../models/product.dart';

class AppConstants {
  static const String appTitle = 'Product List';

  static const List<Product> products = [
	Product(name: 'iPhone 15', price: '25.000.000 đ'),
	Product(name: 'Samsung Galaxy S24', price: '22.000.000 đ'),
	Product(name: 'MacBook Air M3', price: '32.000.000 đ'),
	Product(name: 'iPad Air', price: '17.500.000 đ'),
	Product(name: 'Sony WH-1000XM5', price: '8.990.000 đ'),
  ];
}

