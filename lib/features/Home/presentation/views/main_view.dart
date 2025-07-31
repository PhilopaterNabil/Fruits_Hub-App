import 'package:flutter/material.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/custom_botton_navigation_bar.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/home_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottonNavigationBar(),
      body: SafeArea(child: HomeView()),
    );
  }
}
