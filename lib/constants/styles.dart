import 'package:flutter/material.dart';
import 'package:medidoc/constants/colors.dart';

ButtonStyle buttonStyle = ElevatedButton.styleFrom(
  elevation: 0,
  padding: const EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 18,
  ),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4),
  ),
  backgroundColor: lightPrimaryColor,
);
