import 'package:medidoc/constants/colors.dart';
import 'package:medidoc/constants/sizing.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common_widgets/screen_header.dart';

class AllDoctors extends StatelessWidget {
  const AllDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                const ScreenHeader(
                  headerText: 'Specialist Doctors',
                ),
                heightSize25,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(),
                    heightSize20,
                    //? Tab Bar for Doctor's specialty
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: Colors.grey[700]!,
                        ),
                      ),
                      height: 40,
                      child: TabBar(
                        labelStyle: Theme.of(context).textTheme.bodyMedium,
                        isScrollable: true,
                        physics: const BouncingScrollPhysics(),
                        unselectedLabelColor:
                            Theme.of(context).brightness == Brightness.dark
                                ? lightColor
                                : darkColor,
                        indicator: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(4),
                        ),
                        labelColor:
                            Theme.of(context).brightness == Brightness.dark
                                ? lightColor
                                : lightColor,
                        tabs: const [
                          Tab(
                            text: 'Heart Surgeon',
                          ),
                          Tab(
                            text: 'Dental Surgeon',
                          ),
                          Tab(
                            text: 'Doctors',
                          ),
                          Tab(
                            text: 'Doctors',
                          ),
                        ],
                      ),
                    ),
                    heightSize20,

                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: const TabBarView(
                        children: [
                          DoctorsListW(),
                          DoctorsListW(),
                          DoctorsListW(),
                          DoctorsListW(),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DoctorsListW extends StatelessWidget {
  const DoctorsListW({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemCount: 3,
      separatorBuilder: (BuildContext context, int index) {
        return heightSize10;
      },
      itemBuilder: (BuildContext context, int index) {
        return const Doctors();
      },
    );
  }
}

class Doctors extends StatelessWidget {
  const Doctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 160,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Theme.of(context).colorScheme.background
                  : Colors.grey[300],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 18.0,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.grey[800]!,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      widthSize20,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Dr Aniso'),
                          const Text('MDB, Heart Surgeon'),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Iconsax.star1),
                              widthSize10,
                              Text('text'),
                              Text('text'),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Icon(Iconsax.location),
                              widthSize05,
                              Text(
                                'LMC Hospital',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  heightSize10,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 18,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          backgroundColor: lightPrimaryColor,
                          textStyle: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: primaryColor),
                        ),
                        child: const Text('Appointment'),
                      ),
                      widthSize20,
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 18,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                          backgroundColor: lightPrimaryColor,
                          textStyle: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: primaryColor),
                        ),
                        child: const Text('Message'),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
