import 'package:demo_app/src/exceptions/snackbar.dart';
import 'package:flutter/material.dart';

Future<void> snackBarMessage(BuildContext context) async {
  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      backgroundColor: Colors.transparent,
      behavior: SnackBarBehavior.floating,
      elevation: 0,
      content: CustomSnack(
        errorText: 'The snackbar text goes here',
      ),
    ),
  );
}
