import 'package:flavor_app/app.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class StagingEnvironment implements AppEnvironment {
  @override
  String get baseUrl => 'https://STAGING.DART';
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      appId: 'YOUR APP ID',
      apiKey: 'YOUR Api KEY',
      projectId: 'staging-flavor-app-6b46e',
      storageBucket: 'staging-flavor-app-6b46e.appspot.com',
      messagingSenderId: 'YOUR messagingSenderId ',
    ),
  );
  runApp(MyApp(
    appEnvironment: StagingEnvironment(),
  ));
}
