import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/screens/search/widgets/App_text_icon.dart';
import 'package:ticket_app/screens/search/widgets/app_tickets_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40,),
       Text('What are\nyou looking for?', style: AppStyles.headLine1.copyWith(fontSize: 35),),
          const SizedBox(height: 20,),
          const AppTicketsTabs(),
          const SizedBox(height: 20,),
          const AppTextIcon(icon: Icons.flight_land_outlined, text: 'Arrival',),
          const SizedBox(height: 20,),
          const AppTextIcon(icon: Icons.flight_takeoff_outlined, text: 'Departure',),

        ],
      ),
    );
  }
}
