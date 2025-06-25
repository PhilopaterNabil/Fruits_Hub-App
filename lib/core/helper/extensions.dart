import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension GoRouterNavigation on BuildContext {
  void goToNamed(String routeName, {Object? extra}) {
    GoRouter.of(this).go(routeName, extra: extra);
  }

  void pushTo(String routeName, {Object? extra}) {
    GoRouter.of(this).push(routeName, extra: extra);
  }

  void pushReplacementTo(String routeName, {Object? extra}) {
    GoRouter.of(this).pushReplacement(routeName, extra: extra);
  }

  void goAndRemoveUntil(String routeName, {Object? extra}) {
    GoRouter.of(this).go(routeName, extra: extra);
  }

  void pop() => GoRouter.of(this).pop();
}

extension StringExtension on String? {
  bool isNullOrEmpty() => this == null || this == '';
}

extension ListExtension<T> on List<T>? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;
}

extension MapExtension<K, V> on Map<K, V>? {
  bool isNullOrEmpty() => this == null || this!.isEmpty;
}
