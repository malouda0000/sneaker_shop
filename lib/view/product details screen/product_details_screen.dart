// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneaker_shop/core/theme/colors.dart';
import 'package:sneaker_shop/models/sneakers%20models/sneakers_models.dart';
import 'package:sneaker_shop/view/shared/screen/under_develop_screen.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Sneaker sneaker;

  const ProductDetailsScreen({required this.sneaker});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: Text(
            sneaker.name,
            style: const TextStyle(color: Colors.white),
          ),
          backgroundColor: AppColors.mainColor,
          actions: [
            IconButton(
              onPressed: () {
                Get.to(const UnderDevScreen());
              },
              icon: const Icon(Icons.favorite),
              // color: Colors.white,
            ),
          ]),
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
              child: Text(sneaker.name,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('\$${sneaker.price}',
                  style: const TextStyle(fontSize: 20, color: Colors.green)),
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
