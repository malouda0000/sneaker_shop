import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sneaker_shop/models/sneakers%20models/sneakers_models.dart';

class SneakerController extends GetxController {
  var sneakers = <Sneaker>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchSneakers();
  }

  Future<void> fetchSneakers() async {
    await Future.delayed(Duration(seconds: 1)); // Simulated delay
    final String response =
        await rootBundle.loadString('lib/data/sneakers/sneaker.json');
    final List<dynamic> data = json.decode(response);
    sneakers.value = data.map((sneaker) => Sneaker.fromJson(sneaker)).toList();
  }
}
