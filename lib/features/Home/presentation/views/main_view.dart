import 'package:flutter/material.dart';
import 'package:fruits_hub/features/Home/presentation/views/cart_view.dart';
import 'package:fruits_hub/features/Home/presentation/views/products_view.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/custom_botton_navigation_bar.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/home_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentViewIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottonNavigationBar(
        onItemTapped: (index) {
          setState(() {
            currentViewIndex = index;
          });
        },
      ),
      body: SafeArea(
        child: IndexedStack(
          index: currentViewIndex,
          children: const [
            HomeView(),
            ProductsView(),
            CartView(),
            Center(child: Text('Profile View')),
          ],
        ),
      ),
    );
  }
}
