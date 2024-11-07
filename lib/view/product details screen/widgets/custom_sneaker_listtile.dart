import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneaker_shop/models/sneakers%20models/sneakers_models.dart';
import 'package:sneaker_shop/view/product%20details%20screen/product_details_screen.dart';

class CustomSneakerListTile extends StatelessWidget {
  const CustomSneakerListTile({
    super.key,
    required this.sneaker,
  });

  final Sneaker sneaker;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(sneaker.images[0]),
      title: Text(sneaker.name),
      subtitle: Text('\$${sneaker.price}'),
      onTap: () {
        Get.to(() => ProductDetailsScreen(sneaker: sneaker));
      },
    );
  }
}
