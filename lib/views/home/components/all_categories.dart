import 'package:medidoc/common_widgets/screen_header.dart';
import 'package:medidoc/constants/sizing.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constants/colors.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const ScreenHeader(headerText: 'Choose Categories'),
              heightSize25,
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    mainAxisExtent: 80,
                  ),
                  itemCount: 18,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            color: lightPrimaryColor,
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(Iconsax.heart),
                        ),
                        heightSize05,
                        Text(
                          'Heart Surgeon',
                          style: Theme.of(context).textTheme.bodyMedium,
                        )
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
