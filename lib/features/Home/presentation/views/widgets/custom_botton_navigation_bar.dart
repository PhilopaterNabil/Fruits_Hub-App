import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/features/Home/domain/entites/bottom_navigation_bar_entity.dart';
import 'package:fruits_hub/features/Home/presentation/views/widgets/navigation_bar_item.dart';

class CustomBottonNavigationBar extends StatefulWidget {
  const CustomBottonNavigationBar({super.key, this.onItemTapped});

  final Function(int)? onItemTapped;

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
        children: List.generate(
          bottomNavigationBarItems.length,
          (index) {
            final item = bottomNavigationBarItems[index];
            final isFirst = index == 0;
            final isLast = index == bottomNavigationBarItems.length - 1;

            return Expanded(
              flex: selectedIndex == index ? 3 : 2,
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                  start: isFirst ? 16 : 8,
                  end: isLast ? 16 : 8,
                ),
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                      widget.onItemTapped?.call(index);
                    });
                  },
                  child: NavigationBarItem(
                    isActive: selectedIndex == index,
                    bottomNavigationBarEntity: item,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
