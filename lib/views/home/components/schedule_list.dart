import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizing.dart';

class ScheduleList extends StatelessWidget {
  const ScheduleList({
    Key? key,
  }) : super(key: key);
  final bool index = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: index ? primaryColor : Colors.grey,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 12.0,
          horizontal: 12.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Upcoming Schedule',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            heightSize05,
            Text(
              'Dental Specialist',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            heightSize20,
            Container(
              height: 40,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: lightPrimaryColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      foregroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2021/02/27/16/25/woman-6055084_960_720.jpg',
                      ),
                    ),
                    widthSize10,
                    Text(
                      'View Schedule',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
