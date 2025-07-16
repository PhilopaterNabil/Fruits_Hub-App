import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InActiveItem extends StatelessWidget {
  const InActiveItem({super.key, required this.iconPath});

  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(iconPath);
  }
}
