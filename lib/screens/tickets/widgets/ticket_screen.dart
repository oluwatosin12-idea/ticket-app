import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_tickets_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          const SizedBox(height: 40,),
          Text('Tickets', style: AppStyles.headLine1,),
          const SizedBox(height: 20,),
          const AppTicketsTabs(firstTab: 'Upcoming', secondTab: 'Previous',),
          const SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 16),
              child: TicketView(ticket: ticketList[0], isColor: true,))
        ],
      ),
    );
  }
}
