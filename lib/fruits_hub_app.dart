import 'package:flutter/material.dart';
import 'package:fruits_hub/core/routing/app_router.dart';
import 'package:fruits_hub/core/routing/routes.dart';

class FruitsHubApp extends StatelessWidget {
  const FruitsHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fruits Hub',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: Routes.splashScreen,
      onGenerateRoute: AppRouter().generateRoute,
    );
  }
}
