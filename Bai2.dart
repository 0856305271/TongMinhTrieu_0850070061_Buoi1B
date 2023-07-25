import 'package:flutter/material.dart';

// Step 2: Create a data model for products
class Product {
  final String name;
  final String description;
  final String imageUrl;

  Product({required this.name, required this.description, required this.imageUrl});
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductListScreen(),
    );
  }
}

// Step 3: Create the Product List Screen
class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Điện thoại',
      description: 'Description for Product 1',
      imageUrl: 'https://cdn.tgdd.vn/Products/Images/42/297026/vivo-v27e-tim-thumb-600x600.jpg',
    ),
    Product(
      name: 'Máy tính',
      description: 'Description for Product 2',
      imageUrl: 'data:image/jpeg;base64,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',
    ),
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailProductScreen(product: product),
                ),
              );
            },
            child: ListTile(
              title: Text(product.name),
              subtitle: Text(product.description),
            ),
          );
        },
      ),
    );
  }
}

// Step 4: Create the Detail Product Screen
class DetailProductScreen extends StatelessWidget {
  final Product product;

  DetailProductScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Center(
        child: Image.network(product.imageUrl),
      ),
    );
  }
}
