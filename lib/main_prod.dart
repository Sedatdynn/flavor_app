import 'package:firebase_core/firebase_core.dart';
import 'package:flavor_app/app.dart';
import 'package:flutter/material.dart';

class ProductEnvironment implements AppEnvironment {
  @override
  String get baseUrl => 'https://PRODUCT.DART';
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      appId: 'YOUR APP ID',
      apiKey: 'YOUR Api KEY',
      projectId: 'flavor-app-1f8c3',
      storageBucket: 'flavor-app-1f8c3.appspot.com',
      messagingSenderId: 'YOUR messagingSenderId ',
    ),
  );
  runApp(MyApp(
    appEnvironment: ProductEnvironment(),
  ));
}
