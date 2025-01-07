import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TestStyle3 extends StatelessWidget {
  final String text;
  const TestStyle3({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Text(
      'text',
      style:
      AppStyles.headLine3.copyWith(color: Colors.white),
    );
  }
}
