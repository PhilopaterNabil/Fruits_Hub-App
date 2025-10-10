import 'package:flutter/material.dart';

class CartItemActionButton extends StatelessWidget {
  const CartItemActionButton({
    super.key,
    required this.icon,
    required this.backgroundColor,
    required this.colorIcon,
    required this.onPressed,
  });

  final IconData icon;
  final Color backgroundColor;
  final Color colorIcon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: CircleAvatar(
        radius: 12,
        backgroundColor: backgroundColor,
        child: Icon(icon, color: colorIcon, size: 18),
      ),
    );
  }
}