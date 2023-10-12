import 'package:medidoc/common_widgets/screen_header.dart';
import 'package:medidoc/constants/sizing.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ScreenHeader(
                headerText: 'Chat with doctor',
              ),
              heightSize15,
              Container(
                  alignment: Alignment.centerLeft,
                  height: 30,
                  width: 180,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.green),
                  child: const Text('Hello, how are you doing?')),
              heightSize15,
              Container(
                alignment: Alignment.centerRight,
                height: 30,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey),
                child: const Text('Can you tell me how you\'re doing now?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
