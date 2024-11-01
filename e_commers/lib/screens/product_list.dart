import 'package:e_commers/provider/product_provider.dart';
import 'package:e_commers/screens/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductProvider>(context).products;

    return Scaffold(
      appBar: AppBar(title: Text("Products")),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            leading: Image.network(product.imageUrl),
            title: Text(product.name),
            subtitle: Text("\$${product.price}"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => ProductDetailScreen(product: product),
              ));
            },
          );
        },
      ),
    );
  }
}