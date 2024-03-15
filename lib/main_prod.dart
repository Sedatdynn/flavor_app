import 'package:flavor_app/app.dart';
import 'package:flutter/material.dart';

class ProductEnvironment implements AppEnvironment {
  @override
  String get baseUrl => 'https://PRODUCT.DART';
}

Future<void> main() async {
  runApp(MyApp(
    appEnvironment: ProductEnvironment(),
  ));
}
