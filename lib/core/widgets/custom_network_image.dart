import 'package:flutter/material.dart';

class CustomNetworImage extends StatelessWidget {
  const CustomNetworImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(imageUrl);
  }
}