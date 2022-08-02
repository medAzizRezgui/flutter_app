import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled/utils/app_styles.dart';

import '../utils/app_layout.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.60,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.shade200,
          blurRadius: 2,
          spreadRadius: 10,
        )
      ], color: Styles.primaryColor, borderRadius: BorderRadius.circular(12)),
      height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/one.png"),
              ),
            ),
          ),
          const Gap(15),
          Text(
            "Open Space",
            style: Styles.headLineStyle2.copyWith(color: Colors.white),
          ),
          Text(
            "London",
            style: Styles.headLineStyle4.copyWith(color: Colors.white),
          ),
          const Gap(10),
          Text(
            "\$ 40 / Night",
            style: Styles.headLineStyle.copyWith(color: Colors.white60),
          ),
        ],
      ),
    );
  }
}
