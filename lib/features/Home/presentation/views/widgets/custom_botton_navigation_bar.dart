import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/features/Home/domain/entites/bottom_navigation_bar_entity.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/navigation_bar_item.dart';

class CustomBottonNavigationBar extends StatefulWidget {
  const CustomBottonNavigationBar({super.key});

  @override
  State<CustomBottonNavigationBar> createState() => _CustomBottonNavigationBarState();
}

class _CustomBottonNavigationBarState extends State<CustomBottonNavigationBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 70,
      decoration: ShapeDecoration(
        color: AppColors.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: AppColors.blackColor.withOpacity(0.1),
            blurRadius: 25,
            spreadRadius: 0,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: bottomNavigationBarItems.asMap().entries.map(
          (entry) {
            var index = entry.key;
            var item = entry.value;

            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: NavigationBarItem(
                isActive: selectedIndex == index,
                bottomNavigationBarEntity: item,
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
