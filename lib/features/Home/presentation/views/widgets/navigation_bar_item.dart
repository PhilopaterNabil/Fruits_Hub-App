import 'package:flutter/material.dart';
import 'package:fruits_hub/features/Home/domain/entites/bottom_navigation_bar_entity.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/active_item.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/in_active_item.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    this.isActive = false,
    required this.bottomNavigationBarEntity,
  });

  final bool isActive;
  final BottomNavigationBarEntity bottomNavigationBarEntity;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveItem(
            title: bottomNavigationBarEntity.name,
            iconPath: bottomNavigationBarEntity.activeIconPath,
          )
        : InActiveItem(iconPath: bottomNavigationBarEntity.inActiveIconPath);
  }
}
