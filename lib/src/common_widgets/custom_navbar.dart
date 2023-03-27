import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomNav extends StatelessWidget {
  final Function(int) onItemTapped;
  const BottomNav({
    Key? key,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      // elevation: 0,
      notchMargin: 5.0,
      shape: const CircularNotchedRectangle(),
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Iconsax.home),
              onPressed: () {
                onItemTapped(0);
              },
            ),
            IconButton(
              icon: const Icon(Iconsax.message),
              onPressed: () {
                onItemTapped(1);
              },
            ),
            // const SizedBox(width: 2),
            IconButton(
              icon: const Icon(Iconsax.heart),
              onPressed: () {
                onItemTapped(2);
              },
            ),
            IconButton(
              icon: const Icon(Iconsax.search_normal),
              onPressed: () {
                onItemTapped(3);
              },
            ),
          ],
        ),
      ),
    );
  }
}
