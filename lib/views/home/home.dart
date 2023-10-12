import 'package:medidoc/views/home/components/all_doctors.dart';
import 'package:flutter/material.dart';

import '../../constants/sizing.dart';
import 'components/all_categories.dart';
import 'components/choose_categoriess.dart';
import 'components/doctors_list.dart';
import 'components/schedule_list.dart';
import 'components/view_schedule.dart';

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
              style: Theme.of(context).textTheme.bodyMedium,
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
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AllCategories(),
                        ));
                  },
                  child: Text(
                    'View all',
                    style: Theme.of(context).textTheme.bodyMedium,
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
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AllDoctors(),
                        ));
                  },
                  child: Text(
                    'View all',
                    style: Theme.of(context).textTheme.bodyMedium,
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