import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/app_layoutBuilder_widget.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_tickets_tabs.dart';

class TicketScreen extends StatelessWidget {
  final bool? isColor;
  const TicketScreen({super.key, this.isColor});

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
            padding:  const EdgeInsets.only(left: 16),
              child: TicketView(ticket: ticketList[0], isColor: true,)),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            color:AppStyles.ticketColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Oluwatosin Titilola',
                          style: AppStyles.headLine3
                              .copyWith(color: AppStyles.textColor),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '590493 20322',
                          style: AppStyles.headLine3
                              .copyWith(color:  AppStyles.textColor),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Passenger',
                      style: AppStyles.headLine3
                          .copyWith(color:AppStyles.textColor),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'passport',
                      style: AppStyles.headLine3
                          .copyWith(color:AppStyles.textColor),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                AppLayoutbuilderWidget(randomDivider: 15,  width: 5, isColor: false,),
                SizedBox(height: 20,),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1234 578963289765',
                          style: AppStyles.headLine3
                              .copyWith(color: AppStyles.textColor),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          '590493',
                          style: AppStyles.headLine3
                              .copyWith(color:  AppStyles.textColor),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Number of E-ticket',
                      style: AppStyles.headLine3
                          .copyWith(color:AppStyles.textColor),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Booking code',
                      style: AppStyles.headLine3
                          .copyWith(color:AppStyles.textColor),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
