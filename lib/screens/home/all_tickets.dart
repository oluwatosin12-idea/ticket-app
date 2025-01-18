import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/App_Routes.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'All Tickets',
          style: AppStyles.headLine3,
        ),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
              child: Column(
                children: ticketList
                    .map((singleTicket) => GestureDetector(
                  onTap: (){
                    var index = ticketList.indexOf(singleTicket);
                    print ('I am tapped on $index');
                    Navigator.pushNamed(context, AppRoutes.ticketScreen, arguments: {'index': index});
                  },
                      child: Container(
                                        margin: const EdgeInsets.only(bottom: 20),
                      child: TicketView(ticket: singleTicket, wholeScreen: true,)),
                    ))
                    .toList(),
              ),

          )
        ],
      ),
    );
  }
}
