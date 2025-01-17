import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TestStyle3 extends StatelessWidget {
  final String text;
  final bool? isColor;
  const TestStyle3({super.key, required this.text, this.isColor});

  @override
  Widget build(BuildContext context) {
    return  Text(
      'text',
      style:
      AppStyles.headLine3.copyWith(color: Colors.white),
    );
  }
}
