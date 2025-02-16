import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rentapp/firebase_options.dart';
import 'package:rentapp/presentation/pages/car_details_page.dart';
import 'package:rentapp/presentation/pages/onboarding_page.dart';

import 'presentation/pages/maps_details_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: OnboardingPage());
  }
}
