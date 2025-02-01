import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/home/all_hotels.dart';
import 'package:ticket_app/screens/home/all_tickets.dart';
import 'package:ticket_app/screens/hotel_details.dart';
import 'package:ticket_app/screens/tickets/widgets/ticket_screen.dart';

import 'base/widgets/App_Routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      //home: BottomNavBar() ,
      routes: {
        AppRoutes.homepage: (context) => const BottomNavBar(),
        AppRoutes.allTickets: (context) => const AllTickets(),
        AppRoutes.ticketScreen : (context) => const TicketScreen(),
        AppRoutes.allHotels : (context) => const AllHotels(),
        AppRoutes.hotelDetails : (context) => const HotelDetails(),
      }
    );
  }
}
