import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../constants/sizing.dart';

class DoctorsList extends StatelessWidget {
  const DoctorsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 160,
        decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.dark
                ? Theme.of(context).colorScheme.background
                : Colors.grey[300],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.grey[500]!,
              width: 2,
            )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: NetworkImage(
                            'https://cdn.pixabay.com/photo/2021/02/27/16/25/woman-6055084_960_720.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
              heightSize05,
              Text(
                'Dr. Panda B',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'Heart Surgeon',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              heightSize05,
              Row(
                children: [
                  const Icon(Iconsax.location),
                  widthSize05,
                  Text(
                    'LMC Hospital',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
