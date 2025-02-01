import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/media.dart';

class HotelDetails extends StatelessWidget {
  const HotelDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Hotel Details'),
              background: Image.asset(AppMedia.hotelRoom),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate([
            Text('Hello There'),Text('Hello There'),Text('Hello There'),Text('Hello There'),Text('Hello There'),
            Text('Hello There'),Text('Hello There'),Text('Hello There'),Text('Hello There'),Text('Hello There'),
            Text('Hello There'),Text('Hello There'),Text('Hello There'),Text('Hello There'),Text('Hello There'),
            Text('Hello There'),Text('Hello There'),Text('Hello There'),Text('Hello There'),Text('Hello There'),
            Text('Hello There'),Text('Hello There'),Text('Hello There'),Text('Hello There'),Text('Hello There'),
            Text('Hello There'),Text('Hello There'),Text('Hello There'),Text('Hello There'),Text('Hello There'),
            Text('Hello There'),Text('Hello There'),Text('Hello There'),Text('Hello There'),Text('Hello There'),
            Text('Hello There'),Text('Hello There'),Text('Hello There'),Text('Hello There'),Text('Hello There'),
            Text('Hello There'),Text('Hello There'),Text('Hello There'),Text('Hello There'),Text('Hello There'),
            Text('Hello There'),Text('Hello There'),Text('Hello There'),Text('Hello There'),Text('Hello There'),
            Text('Hello There'),Text('Hello There'),Text('Hello There'),Text('Hello There'),Text('Hello There'),


          ]))
        ],
      ),
    );
  }
}
