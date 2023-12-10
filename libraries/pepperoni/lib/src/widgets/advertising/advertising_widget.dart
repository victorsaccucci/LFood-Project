import 'package:flutter/material.dart';

class AdvertisingWidget extends StatelessWidget {
  final String imageUrl;
  const AdvertisingWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
            imageUrl,
            fit: BoxFit.cover),
      ),
    );
  }
}
