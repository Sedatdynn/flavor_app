import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

interface class AppEnvironment {
  const AppEnvironment({required this.baseUrl});
  final String baseUrl;
}

class MyApp extends StatefulWidget {
  final AppEnvironment appEnvironment;
  const MyApp({required this.appEnvironment, super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String dbName = "";

  void getDbName() {
    FirebaseFirestore.instance
        .collection('AppEnvironment')
        .doc('1')
        .get()
        .then((DocumentSnapshot documentSnapshot) {
      if (documentSnapshot.exists) {
        Map<String, dynamic> data = documentSnapshot.data() as Map<String, dynamic>;
        setState(() {
          dbName = data["dbName"];
        });
      } else {
        setState(() {
          dbName = "data could not be found.";
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  widget.appEnvironment.baseUrl,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  getDbName();
                },
                child: const Text('Get dbName'),
              ),
              const SizedBox(height: 20),
              Text(
                'Database Name: $dbName',
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ));
  }
}
