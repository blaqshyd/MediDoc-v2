import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constants/colors.dart';

class ViewSchedule extends StatelessWidget {
  const ViewSchedule({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Find your Specialist',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            Text(
              'doctor here',
              style: Theme.of(context).textTheme.displayLarge,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
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
                Iconsax.notification,
                color: Theme.of(context).brightness == Brightness.dark
                    ? darkColor
                    : primaryColor,
              ),
            ),
            const SizedBox(width: 10),
            Container(
              height: 50,
              width: 50,
              decoration: const BoxDecoration(
                color: primaryColor,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2021/02/27/16/25/woman-6055084_960_720.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
