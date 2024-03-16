import 'package:firebase_core/firebase_core.dart';
import 'package:flavor_app/app.dart';

import 'package:flutter/material.dart';

class DevelopmentEnvironment implements AppEnvironment {
  @override
  String get baseUrl => 'https://DEVELOPMENT.DART';
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      appId: 'YOUR APP ID',
      apiKey: 'YOUR Api KEY',
      projectId: 'dev-flavor-app-2bbe0',
      storageBucket: 'dev-flavor-app-2bbe0.appspot.com',
      messagingSenderId: 'YOUR messagingSenderId ',
    ),
  );
  runApp(MyApp(
    appEnvironment: DevelopmentEnvironment(),
  ));
}
