import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled/utils/app_layout.dart';
import 'package:untitled/widgets/icon_text_widget.dart';

import '../utils/app_styles.dart';
import '../widgets/double_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getHeight(20),
            vertical: AppLayout.getHeight(20),
          ),
          children: [
            Gap(
              AppLayout.getHeight(40),
            ),
            Text(
              "What are\nyou looking for?",
              style: Styles.headLineStyle.copyWith(
                fontSize: AppLayout.getHeight(35),
              ),
            ),
            Gap(
              AppLayout.getHeight(20),
            ),
            Container(
              padding: const EdgeInsets.all(2.5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  AppLayout.getHeight(50),
                ),
                color: const Color(0xFFF4F6FD),
              ),
              child: Row(
                children: [
                  // Airline tickets
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    width: size.width * .44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(
                            AppLayout.getHeight(50),
                          ),
                          topLeft: Radius.circular(
                            AppLayout.getHeight(50),
                          ),
                        ),
                        color: Colors.white),
                    child: const Center(child: Text("Airline Tickets")),
                  ),
                  // Hotels
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    width: size.width * .44,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(
                            AppLayout.getHeight(50),
                          ),
                          topRight: Radius.circular(
                            AppLayout.getHeight(50),
                          ),
                        ),
                        color: Colors.transparent),
                    child: const Center(child: Text("Hotels")),
                  ),
                ],
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            const IconTextWidget(
              icon: Icons.flight_takeoff,
              text: "Departure",
            ),
            Gap(AppLayout.getHeight(15)),
            const IconTextWidget(
              icon: Icons.flight_land,
              text: "Arrival",
            ),
            Gap(
              AppLayout.getHeight(20),
            ),
            Container(
              padding: EdgeInsets.all(AppLayout.getHeight(15)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(12),
                  ),
                  color: const Color(0xD91130CE)),
              child: Text(
                "Find Tickets",
                textAlign: TextAlign.center,
                style: Styles.textStyle.copyWith(color: Colors.white),
              ),
            ),
            Gap(AppLayout.getHeight(40)),
            const DoubleTextWidget(title: "Upcoming Flights"),
            Gap(AppLayout.getHeight(40)),
            SizedBox(
              height: AppLayout.getHeight(300),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(15)),
                    width: size.width * .45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          AppLayout.getHeight(12),
                        ),
                        color: Colors.white),
                    child: Column(
                      children: [
                        Container(
                          height: AppLayout.getHeight(120),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/sit.jpg"),
                            ),
                          ),
                        ),
                        Gap(AppLayout.getHeight(15)),
                        Text(
                          "Content and code samples on this page are subject to the licenses described in the Content License.  ",
                          style: Styles.headLineStyle3,
                        )
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(12)),
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              AppLayout.getHeight(12),
                            ),
                            color: Colors.green),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount for survey",
                              style: Styles.headLineStyle2
                                  .copyWith(color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              "Some text that describe the title goes here",
                              style: Styles.textStyle
                                  .copyWith(color: Colors.white, fontSize: 14),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(12)),
                        width: size.width * 0.4,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              AppLayout.getHeight(12),
                            ),
                            color: Colors.cyan),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Take Care !",
                              style: Styles.headLineStyle2
                                  .copyWith(color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              "Some text that describe the title goes here",
                              style: Styles.textStyle
                                  .copyWith(color: Colors.white, fontSize: 14),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
    );
  }
}
