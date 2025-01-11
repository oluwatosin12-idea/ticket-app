
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotel({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(6),
      width: size.width*0.6,
      height:350,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:
        [Container
          (height: 180,
         margin: const EdgeInsets.only(right: 10),
         decoration: BoxDecoration(
         color: AppStyles.primaryColor,
         borderRadius: BorderRadius.circular(12),
           image: DecorationImage(
             fit: BoxFit.cover,
               image: AssetImage('assets/images/images/${hotel['image']}'
           ),
           ),
         )),
          const SizedBox(height: 10,),
          Padding(padding: const EdgeInsets.only(left: 15),
        child:
        Text(
          hotel['image'], style: AppStyles.headLine1.copyWith(color: Colors.white),
          )
      ),
          const SizedBox(height: 5,),
          Padding(padding: const EdgeInsets.only(left: 15),
              child:
              Text(
                hotel['place'], style: AppStyles.headline2.copyWith(color: Colors.white),
              )
          ),
          const SizedBox(height: 20,),
          Padding(padding: const EdgeInsets.only(left: 15),
              child:
              Text(
                '\$${hotel['price']}/night', style: AppStyles.headLine1.copyWith(color: Colors.white),
              )
          ),
        ],
      ),
    );

  }
}
