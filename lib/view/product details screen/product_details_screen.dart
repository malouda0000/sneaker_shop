import 'package:flutter/material.dart';
import '../models/sneaker.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Sneaker sneaker;

  ProductDetailsScreen({required this.sneaker});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sneaker.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              child: PageView.builder(
                itemCount: sneaker.images.length,
                itemBuilder: (context, index) {
                  return Image.network(sneaker.images[index]);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(sneaker.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('\$${sneaker.price}', style: TextStyle(fontSize: 20, color: Colors.green)),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(sneaker.description),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Add to Cart"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
