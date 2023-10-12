import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../constants/colors.dart';
import '../constants/sizing.dart';

class ScreenHeader extends StatelessWidget {
  final String? headerText;
  const ScreenHeader({
    Key? key,
    this.headerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () => Navigator.pop(context),
          child: Container(
            height: 35,
            width: 35,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 0),
                    blurRadius: 5,
                  )
                ]),
            child: Icon(
              Iconsax.arrow_left_1,
              color: Theme.of(context).brightness == Brightness.dark
                  ? darkColor
                  : primaryColor,
            ),
          ),
        ),
        widthSize40,
        Text(
          headerText!,
          style: Theme.of(context).textTheme.displayLarge,
        )
      ],
    );
  }
}
