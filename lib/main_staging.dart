import 'package:flavor_app/app.dart';
import 'package:flutter/material.dart';

class StagingEnvironment implements AppEnvironment {
  @override
  String get baseUrl => 'https://STAGING.DART';
}

void main() {
  runApp(MyApp(
    appEnvironment: StagingEnvironment(),
  ));
}
