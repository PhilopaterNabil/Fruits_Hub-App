import 'package:flutter/material.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/featured_item.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(5, (index) => const FeaturedItem()),
      ),
    );
    // ListView.builder(
    //   scrollDirection: Axis.horizontal,
    //   itemCount: 5, // Adjust the number of items as needed
    //   itemBuilder: (context, index) {
    //     return const FeaturedItem();
    //   },
    // );
  }
}
