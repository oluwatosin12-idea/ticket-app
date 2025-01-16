
import 'package:flutter/material.dart';
import '../../../base/res/styles/app_styles.dart';
import '../../../base/res/styles/media.dart';


class TicketPromotion extends StatelessWidget {
  const TicketPromotion({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding:
          const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          width: size.width * 0.42,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  spreadRadius: 3,
                  blurRadius: 3,
                ),
              ]),
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: AssetImage(AppMedia.planeSit),
                      fit: BoxFit.cover,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                '20% discount on the early booking of this flight',
                style: AppStyles.headLine1,
              )
            ],
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    width: size.width * 0.44,
                    height: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFF3AB8B8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Discount\nfor survey',
                          style: AppStyles.headLine1.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Take the survey about our services and get a discount',
                          style: AppStyles.headline2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 18),
                        )
                      ],
                    )),
                Positioned(
                  right: -45,
                  top: -40,
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: 18, color: AppStyles.circleColor),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              width: size.width * 0.44,
              height: 210,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xFFEC6545),
              ),
              child: Column(
                children: [
                  Text('Take love',
                      style: AppStyles.headLine3.copyWith(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),

                  Text('😍🥰😘')
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
