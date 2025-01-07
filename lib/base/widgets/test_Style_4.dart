import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TestStyle4 extends StatelessWidget {
  final String text;
  const TestStyle4({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Text(
      'text',
      style:
      AppStyles.headLine4.copyWith(color: Colors.white),
    );
  }
}
