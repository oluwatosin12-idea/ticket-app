import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layoutBuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_Circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 199,
      child: Container(
        margin: const EdgeInsets.only(right: 15),
        child: Column(
          children: [
            //blue part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketBlue,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'NYC',
                        style:
                            AppStyles.headLine3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      const BigDot(),
                      Expanded(
                          child: Stack(
                        children: [
                          const SizedBox(
                            height: 24,
                            child: AppLayoutbuilderWidget(
                              randomDivider: 6,
                            ),
                          ),
                          Center(
                              child: Transform.rotate(
                                  angle: 1.57,
                                  child: const Icon(
                                    Icons.local_airport_outlined,
                                    color: Colors.white,
                                  ))),
                        ],
                      )),
                      const BigDot(),
                      Expanded(child: Container()),
                      Text(
                        'LDN',
                        style:
                            AppStyles.headLine3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          textAlign: TextAlign.start,
                          'New-York',
                          style:
                              AppStyles.headLine4.copyWith(color: Colors.white),
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        '8H 30M',
                        style:
                            AppStyles.headLine4.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: Text(
                          textAlign: TextAlign.end,
                          'London',
                          style:
                              AppStyles.headLine4.copyWith(color: Colors.white),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            //circles and dots
            Container(
              color: AppStyles.ticketOrange,
              child: const Row(
                children: [
                  BigCircle(
                    isRight: false,
                  ),
                  Expanded(child: AppLayoutbuilderWidget(randomDivider: 16, width: 6,)),
                  BigCircle(
                    isRight: true,
                  ),
                ],
              ),
            ),
            //orange part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('1 MAY', style: AppStyles.headLine3.copyWith(color: Colors.white),),
                          SizedBox(height: 5,),
                          Text('Date',  style: AppStyles.headLine3.copyWith(color: Colors.white),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('8:00 AM', style: AppStyles.headLine3.copyWith(color: Colors.white),),
                          SizedBox(height: 5,),
                          Text('Departure Time',  style: AppStyles.headLine3.copyWith(color: Colors.white),),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('23', style: AppStyles.headLine3.copyWith(color: Colors.white),),
                          const SizedBox(height: 5,),
                          Text('Number',  style: AppStyles.headLine3.copyWith(color: Colors.white),),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
