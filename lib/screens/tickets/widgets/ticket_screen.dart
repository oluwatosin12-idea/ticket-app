import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/all_json.dart';
import 'package:ticket_app/base/widgets/app_layoutBuilder_widget.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_tickets_tabs.dart';

class TicketScreen extends StatefulWidget {
  final bool? isColor;
  const TicketScreen({super.key, this.isColor});

  @override
  State<TicketScreen> createState() => _TicketScreenState();

}

class _TicketScreenState extends State<TicketScreen> {

  @override
  // void didChangeDependencies() {
  //   var args = ModalRoute.of(context) !.settings.arguments as Map;
  //   print('passed index ${args["index"]}');
  //   // TODO: implement didChangeDependencies
  //   super.didChangeDependencies();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgcolor,
      appBar: AppBar(
        title: Center(child: Text('Ticket')),
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            children: [
              // const SizedBox(
              //   height: 40,
              // ),
              // Text(
              //   'Tickets',
              //   style: AppStyles.headLine1,
              // ),
              const SizedBox(
                height: 20,
              ),
              const AppTicketsTabs(
                firstTab: 'Upcoming',
                secondTab: 'Previous',
              ),
              const SizedBox(
                height: 20,
              ),
              //white and black ticket
              Container(
                  padding: const EdgeInsets.only(left: 16),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: true,
                  ),),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                color: AppStyles.ticketColor,
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
                                  .copyWith(color: AppStyles.textColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Passenger',
                          style: AppStyles.headLine3
                              .copyWith(color: AppStyles.textColor),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'passport',
                          style: AppStyles.headLine3
                              .copyWith(color: AppStyles.textColor),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppLayoutbuilderWidget(
                      randomDivider: 15,
                      width: 5,
                      isColor: false,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
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
                                  .copyWith(color: AppStyles.textColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Number of E-ticket',
                          style: AppStyles.headLine3
                              .copyWith(color: AppStyles.textColor),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Booking code',
                          style: AppStyles.headLine3
                              .copyWith(color: AppStyles.textColor),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AppLayoutbuilderWidget(
                      randomDivider: 15,
                      width: 5,
                      isColor: false,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/images/visa_card.png',
                                  scale: 8,
                                ),
                                Text(
                                  '*** 23456',
                                  style: AppStyles.headLine3,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              '\$249.99',
                              style: AppStyles.headLine3
                                  .copyWith(color: AppStyles.textColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Payment method',
                          style: AppStyles.headLine3
                              .copyWith(color: AppStyles.textColor),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Price',
                          style: AppStyles.headLine3
                              .copyWith(color: AppStyles.textColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
              //bottom of the ticket screen section
              SizedBox(
                height: 3,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    color: AppStyles.ticketColor,
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(21),
                      bottomLeft: Radius.circular(21),
                    )),
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: BarcodeWidget(
                          height: 90,
                          data: 'https://www.1234545.com',
                          barcode: Barcode.code128(),
                          drawText: false,
                        ))),
              ),
              const SizedBox(
                height: 20,
              ),
              //colorful ticket
              Container(
                  padding: const EdgeInsets.only(left: 16),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: widget.isColor,
                  )),
            ],
          ),
          Positioned(
            left: 22, top: 258,
              child: Container(
                padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,border: Border.all(width: 3)
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: AppStyles.textColor,
            ),
          )),
          Positioned(
              right: 22, top: 258,
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,border: Border.all(width: 3)
                ),
                child: CircleAvatar(
                  maxRadius: 4,
                  backgroundColor: AppStyles.textColor,
                ),
              )),
        ],
      ),
    );
  }
}
