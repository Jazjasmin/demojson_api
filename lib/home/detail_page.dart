import 'package:demo_json_pjct/product_model/product_model.dart';
import 'package:flutter/material.dart';


class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text(
          product.title.toString(),
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 180, 15, 3),
      ),
      body:SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [              
              Image.network(
                product.thumbnail.toString(),fit: BoxFit.cover,
                width: 460,
                height: 500,
              ),
              Text("Name: ${product.title}"),
              Text("Brand: \$${product.brand.toString()}"),
              Text("Price: \$${product.price.toString()}"),
              Text("Details: \$${product.description.toString()}"),
            ],
          ),
        ),
      ),
    );
  }
}