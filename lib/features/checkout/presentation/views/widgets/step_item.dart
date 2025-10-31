import 'package:flutter/material.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/active_step_item.dart';
import 'package:fruits_hub/features/checkout/presentation/views/widgets/in_active_step_item.dart';

class StepItem extends StatelessWidget {
  const StepItem({
    super.key,
    required this.index,
    required this.title,
    required this.isActive,
  });

  final String index, title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: InActiveStepItem(index: index, title: title),
      secondChild: ActiveStepItem(title: title),
      crossFadeState: isActive ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 300),
    );
  }
}
