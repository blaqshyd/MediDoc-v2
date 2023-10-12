import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomNav extends StatelessWidget {
  final Function(int) onItemTapped;
  const BottomNav({
    Key? key,
    required this.onItemTapped,
  }) : super(key: key);

  get index => 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      // elevation: 0,
      // notchMargin: 5.0,
      // shape: const CircularNotchedRectangle(),
      child: SizedBox(
        height: 60,
        child: Column(
          children: [
            Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(Iconsax.home),
                  onPressed: () {
                    onItemTapped(0);
                  },
                  // color: index == 0 ? Colors.blue : Colors.grey,
                ),
                IconButton(
                  icon: const Icon(Iconsax.message),
                  onPressed: () {
                    onItemTapped(1);
                  },
                ),
                // const SizedBox(width: 2),
                IconButton(
                  icon: const Icon(Iconsax.notification),
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
            // heightSize05,
          ],
        ),
      ),
    );
  }
}
