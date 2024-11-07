import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:sneaker_shop/view/home/controller/sneakers_controller.dart';
import 'package:sneaker_shop/view/product%20details%20screen/product_details_screen.dart';

class HomeScreen extends StatelessWidget {
  final SneakerController sneakerController = Get.put(SneakerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sneaker Shop'),
      ),
      body: Obx(() {
        if (sneakerController.sneakers.isEmpty) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: sneakerController.sneakers.length,
          itemBuilder: (context, index) {
            final sneaker = sneakerController.sneakers[index];
            return ListTile(
              leading: Image.network(sneaker.images[0]),
              title: Text(sneaker.name),
              subtitle: Text('\$${sneaker.price}'),
              onTap: () {
                Get.to(() => ProductDetailsScreen(sneaker: sneaker));
              },
            );
          },
        );
      }),
    );
  }
}
