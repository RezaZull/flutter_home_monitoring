import 'package:flutter/material.dart';

class BannerColWidget extends StatelessWidget {
  final String topText;
  final String bottomText;
  const BannerColWidget(
      {super.key, required this.topText, required this.bottomText});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          topText,
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
        ),
        Text(bottomText,
            style: const TextStyle(color: Colors.white, fontSize: 14))
      ],
    );
  }
}
