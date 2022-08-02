import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled/utils/app_layout.dart';

import '../utils/app_styles.dart';

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
                            )),
                        color: Colors.white),
                    child: const Center(child: Text("Airline Tickets")),
                  ),
                ],
              ),
            )
          ]),
    );
  }
}
