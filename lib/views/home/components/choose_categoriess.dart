import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizing.dart';

class ChooseCategories extends StatelessWidget {
  const ChooseCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      decoration: BoxDecoration(
          color: Theme.of(context).brightness == Brightness.dark
              ? Theme.of(context).colorScheme.background
              : Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.grey[500]!,
            width: 2,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              color: lightPrimaryColor,
              shape: BoxShape.circle,
            ),
            child: const Icon(Iconsax.heart),
          ),
          heightSize05,
          Text(
            'Heart Surgeon',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
