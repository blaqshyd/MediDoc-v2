import 'package:flutter/material.dart';

class CustomSnack extends StatelessWidget {
  final String errorText;
  const CustomSnack({
    Key? key,
    required this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.maxFinite,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.red[400],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Oh Snap',
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(),
            // const SizedBox(height: 10),
            Text(
              errorText,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

