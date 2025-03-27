import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zanis_task/core/services/state_logger.dart';
import 'modules/home/presentation/screens/home_screen.dart';

void main() {
  runApp(
    ProviderScope(
      observers: [StateLogger()],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
