import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/App_Routes.dart';

import 'hotel.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      appBar: AppBar(
        title: Text('All Hotels'),
        backgroundColor: AppStyles.bgcolor,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.9,
            ),
            itemCount: hotelList.length,
            itemBuilder: (context, index) {
              var singleHotel = hotelList[index];
              return HotelGridView(
                hotel: singleHotel, index : index
              );
            }),
      ),
    );
  }
}

class HotelGridView extends StatelessWidget {
  final Map<String, dynamic> hotel;
  final int index;
  const HotelGridView({super.key, required this.hotel, required this.index});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, AppRoutes.hotelDetails, arguments: {'index': index});
        print('my index is $index');
      },
      child: Container(
        padding: EdgeInsets.all(6),
        width: size.width * 0.6,
        height: 150,
        margin: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: AppStyles.primaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 2.5,
              child: Container(
                  //height: 180,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    color: AppStyles.primaryColor,
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/images/${hotel['image']}'),
                    ),
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  hotel['image'],
                  style: AppStyles.headline2.copyWith(color: Colors.white),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 7,
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      hotel['place'],
                      style: AppStyles.headline2.copyWith(color: Colors.white),
                    )),
                //const SizedBox(height: 20,),
                Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      '\$${hotel['price']}/night',
                      style: AppStyles.headline2.copyWith(color: Colors.white),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
