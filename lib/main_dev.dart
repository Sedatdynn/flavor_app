import 'package:flavor_app/app.dart';

import 'package:flutter/material.dart';

class DevelopmentEnvironment implements AppEnvironment {
  @override
  String get baseUrl => 'https://DEVELOPMENT.DART';
}

Future<void> main() async {
  runApp(MyApp(
    appEnvironment: DevelopmentEnvironment(),
  ));
}
