import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product List Example',
      home: ProductListScreen(),
    );
  }
}

class Product {
  final String name;
  final String description;

  Product(this.name, this.description);
}

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product('Tong Minh Trieu', '0850070061'),
    Product('Nguyen Quoc Khanh', '0750070026'),
    Product('Tao Gia Khanh', '0850070023'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product List')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(products[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  ProductDetailScreen(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Center(
        child: Text(product.description),
      ),
    );
  }
}
