import 'package:demo_app/src/constants/colors.dart';
import 'package:demo_app/src/constants/sizing.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Panda',
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const SizedBox(height: 10),
            const ViewSchedule(),
            heightSize20,
            SizedBox(
              height: 150,
              child: ListView.separated(
                separatorBuilder: (context, index) => widthSize10,
                itemCount: 2,
                itemBuilder: (context, index) => const ScheduleList(),
                scrollDirection: Axis.horizontal,
              ),
            ),
            heightSize10,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Choose Categories',
                  style: Theme.of(context).textTheme.headline1,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'View all',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ],
            ),
            heightSize10,
            SizedBox(
              height: 100,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const ChooseCategories(),
                separatorBuilder: (context, index) => widthSize10,
                itemCount: 4,
              ),
            ),
            heightSize10,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Available Doctors',
                  style: Theme.of(context).textTheme.headline1,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'View all',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ],
            ),
            heightSize10,
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => const DoctorsList(),
                separatorBuilder: (context, index) => widthSize10,
                itemCount: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
                ? Theme.of(context).backgroundColor
                : Colors.grey[300],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.grey[400]!,
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
                    ),
                  ),
                ],
              ),
              heightSize05,
              Text(
                'Dr. Panda S',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'Heart Surgeon',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2,
              ),
              heightSize05,
              Row(
                children: [
                  const Icon(Iconsax.location),
                  widthSize05,
                  Text(
                    'LMC Hospital',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

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
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              'doctor here',
              style: Theme.of(context).textTheme.headline1,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(Iconsax.notification),
            SizedBox(width: 10),
            CircleAvatar(
              minRadius: 25,
            ),
          ],
        ),
      ],
    );
  }
}

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
              ? Theme.of(context).backgroundColor
              : Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.grey[400]!,
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
            style: Theme.of(context).textTheme.bodyText2,
          )
        ],
      ),
    );
  }
}

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
              style: Theme.of(context).textTheme.bodyText1,
            ),
            heightSize05,
            Text(
              'Dental Specialist',
              style: Theme.of(context).textTheme.bodyText2,
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
                    const CircleAvatar(),
                    widthSize10,
                    Text(
                      'View Schedule',
                      style: Theme.of(context).textTheme.bodyText2,
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


 // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Container(
              //     width: double.maxFinite,
              //     height: 60,
              //     decoration: const BoxDecoration(
              //         color: Colors.white24,
              //         borderRadius: BorderRadius.only(
              //           topLeft: Radius.circular(12),
              //           topRight: Radius.circular(12),
              //           bottomLeft: Radius.circular(12),
              //           bottomRight: Radius.circular(12),
              //         )),
              //     child: ElevatedButton(
              //       onPressed: () {
              //         snackBarMessage(context);
              //       },
              //       child: const Text('Submit'),
              //     ),
              //   ),
              // )