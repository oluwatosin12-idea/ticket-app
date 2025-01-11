import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/app_double_text.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'hotel.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 29),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: AppStyles.headline2,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text('Book Tickets', style: AppStyles.headLine1),
                      ],
                    ),
                    Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage(
                                    'assets/images/images/logo.png'))))
                  ],
                ),
                const SizedBox(
                  height: 23,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: const Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          FluentSystemIcons.ic_fluent_search_regular,
                        ),
                        Text('Search'),
                      ]),
                ),
                const SizedBox(
                  height: 40,
                ),
                AppDoubleText(
                  bigText: 'Upcoming Flight',
                  smallText: 'View All',
                  func: ()  {
                       Navigator.pushNamed(context, 'all_tickets'); },
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: ticketList
                          .map((singleTicket) => TicketView(
                                ticket: singleTicket,
                              ))
                          .toList(),
                    )),
                const SizedBox(
                  height: 40,
                ),
                AppDoubleText(
                  bigText: 'Hotels',
                  smallText: 'View All',
                  func:() {

                  },
                ),
                const SizedBox(
                  height: 20,),
                  SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList
                        .map((singleHotel) => Hotel(
                      hotel: singleHotel,
                    ))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
