import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled/screens/ticket_view.dart';
import 'package:untitled/utils/app_info_list.dart';
import 'package:untitled/widgets/ticket_tabs.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: Stack(
          children: [
            ListView(
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(20),
                  vertical: AppLayout.getHeight(20),
                ),
                children: [
                  Gap(
                    AppLayout.getHeight(40),
                  ),
                  Text(
                    "Tickets",
                    style: Styles.headLineStyle.copyWith(
                      fontSize: AppLayout.getHeight(35),
                    ),
                  ),
                  Gap(
                    AppLayout.getHeight(20),
                  ),
                  const TicketTabs(text1: "Upcoming", text2: "Previous"),
                  Gap(AppLayout.getHeight(20)),
                  Container(
                    child: TicketView(
                      ticket: ticketList[0],
                      isColor: false,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(16)),
                    padding: EdgeInsets.all(AppLayout.getHeight(15)),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Flutter DB",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.black),
                            ),
                            Text(
                              "1478 145879",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Passengers", style: Styles.headLineStyle4),
                            Text(
                              "Passport",
                              style: Styles.headLineStyle4,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(16)),
                    padding: EdgeInsets.all(AppLayout.getHeight(15)),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "0154 1549 8547",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.black),
                            ),
                            Text(
                              "BS2G79SA",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Number of E-Ticket",
                                style: Styles.headLineStyle4),
                            Text(
                              "Booking Code",
                              style: Styles.headLineStyle4,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(16)),
                    padding: EdgeInsets.all(AppLayout.getHeight(15)),
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 40,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/visa.png"),
                                    ),
                                  ),
                                ),
                                Text(
                                  " *** 487",
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.black),
                                ),
                              ],
                            ),
                            Text(
                              "259,50\$",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.black),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Payment Method",
                                style: Styles.headLineStyle4),
                            Text(
                              "Price",
                              style: Styles.headLineStyle4,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(21),
                          bottomRight: Radius.circular(21)),
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(15),
                        vertical: AppLayout.getHeight(10)),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(15)),
                      child: BarcodeWidget(
                        data: "https://goole.com",
                        barcode: Barcode.code128(),
                        drawText: false,
                        color: Styles.textColor,
                        width: double.infinity,
                        height: 70,
                      ),
                    ),
                  ),
                  Gap(AppLayout.getHeight(20)),
                  TicketView(ticket: ticketList[0], isColor: true)
                ]),
          ],
        ));
  }
}
