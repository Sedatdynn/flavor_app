import 'package:flutter/material.dart';

interface class AppEnvironment {
  const AppEnvironment({required this.baseUrl});
  final String baseUrl;
}

class MyApp extends StatelessWidget {
  final AppEnvironment appEnvironment;
  const MyApp({required this.appEnvironment, super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          body: Center(
            child: Text(
              appEnvironment.baseUrl,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ));
  }
}
