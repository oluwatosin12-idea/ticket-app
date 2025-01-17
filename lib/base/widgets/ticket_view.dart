import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/app_layoutBuilder_widget.dart';
import 'package:ticket_app/base/widgets/big_Circle.dart';
import 'package:ticket_app/base/widgets/big_dot.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool wholeScreen;
  final bool? isColor;
  const TicketView(
      {super.key,
      required this.ticket,
      this.wholeScreen = false,
      this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 199,
      child: Container(
        margin: EdgeInsets.only(right: wholeScreen == true ? 0 : 16),
        child: Column(
          children: [
            //blue part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor == null
                    ? AppStyles.ticketBlue
                    : AppStyles.ticketColor,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColor == null
                            ? AppStyles.headLine3.copyWith(color: Colors.white)
                            : AppStyles.headLine3,
                      ),
                      Expanded(child: Container()),
                      BigDot(
                        isColor: isColor,
                      ),
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
                                  child: Icon(
                                    Icons.local_airport_outlined,
                                    color: isColor == null
                                        ? Colors.white
                                        : Color(0xFF8ACCF7),
                                  ))),
                        ],
                      )),
                      BigDot(isColor: isColor),
                      Expanded(child: Container()),
                      Text(
                        ticket['to']['code'],
                        style: isColor == null
                            ? AppStyles.headLine3.copyWith(color: Colors.white)
                            : AppStyles.headLine3,
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
                          ticket['from']['name'],
                          style: isColor == null
                              ? AppStyles.headLine4
                                  .copyWith(color: Colors.white)
                              : AppStyles.headLine3,
                        ),
                      ),
                      Expanded(child: Container()),
                      Text(
                        ticket['flying_time'],
                        style: isColor == null
                            ? AppStyles.headLine4.copyWith(color: Colors.white)
                            : AppStyles.headLine3,
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: Text(
                          textAlign: TextAlign.end,
                          ticket['to']['name'],
                          style: isColor == null
                              ? AppStyles.headLine4
                                  .copyWith(color: Colors.white)
                              : AppStyles.headLine3,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            //circles and dots
            Container(
              color: isColor == null
                  ? AppStyles.ticketOrange
                  : AppStyles.ticketColor2,
              child: Row(
                children: [
                  BigCircle(
                    isRight: false,
                    isColor: isColor,
                  ),
                   Expanded(
                      child: AppLayoutbuilderWidget(
                    randomDivider: 16,
                    width: 6,
                        isColor: isColor,
                  )),
                  BigCircle(
                    isRight: true,
                    isColor: isColor,
                  ),
                ],
              ),
            ),
            //orange part of the ticket
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isColor==null? AppStyles.ticketOrange: AppStyles.ticketColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(isColor==null?21:0),
                    bottomRight: Radius.circular(isColor==null?21:0)),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style: AppStyles.headLine3
                                .copyWith(color: isColor==null?Colors.white : AppStyles.textColor),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Date',
                            style: AppStyles.headLine3
                                .copyWith(color: isColor==null?Colors.white: AppStyles.textColor),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: AppStyles.headLine3
                                .copyWith(color: isColor==null?Colors.white:AppStyles.textColor),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Departure Time',
                            style: AppStyles.headLine3
                                .copyWith(color: isColor==null?Colors.white:AppStyles.textColor),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['number'].toString(),
                            style: AppStyles.headLine3
                                .copyWith(color: isColor==null?Colors.white:AppStyles.textColor),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'Number',
                            style: AppStyles.headLine3
                                .copyWith(color:isColor==null? Colors.white:AppStyles.textColor),
                          ),
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
