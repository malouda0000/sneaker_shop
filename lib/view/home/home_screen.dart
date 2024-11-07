import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sneaker_shop/core/theme/colors.dart';
import 'package:sneaker_shop/view/home/controller/sneakers_controller.dart';
import 'package:sneaker_shop/view/product%20details%20screen/widgets/custom_sneaker_listtile.dart';
import 'package:sneaker_shop/view/shared/screen/under_develop_screen.dart';

class HomeScreen extends StatelessWidget {
  final SneakerController sneakerController = Get.put(SneakerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'Sneaker Shop',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: AppColors.mainColor,
          actions: [
            IconButton(
              onPressed: () {
                Get.to(const UnderDevScreen());
              },
              icon: const Icon(Icons.search),
              // color: Colors.white,
            ),
            IconButton(
              onPressed: () {
                Get.to(const UnderDevScreen());
              },
              icon: const Icon(Icons.settings),
              // color: Colors.white,
            ),
          ]),
      drawer: const Drawer(
        child: Center(child: Text("Drawer")),
      ),
      body: Obx(() {
        if (sneakerController.sneakers.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          itemCount: sneakerController.sneakers.length,
          itemBuilder: (context, index) {
            final sneaker = sneakerController.sneakers[index];
            return CustomSneakerListTile(sneaker: sneaker);
          },
        );
      }),
    );
  }
}
