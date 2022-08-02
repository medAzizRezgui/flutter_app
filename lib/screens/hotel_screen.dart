import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:untitled/utils/app_styles.dart';

import '../utils/app_layout.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

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
      height: AppLayout.getHeight(350),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}"),
              ),
            ),
          ),
          const Gap(15),
          Text(
            "${hotel['place']}",
            style: Styles.headLineStyle2.copyWith(color: Colors.white),
          ),
          Text(
            "${hotel['destination']}",
            style: Styles.headLineStyle4.copyWith(color: Colors.white),
          ),
          const Gap(10),
          Text(
            "\$ ${hotel['price']} / Night",
            style: Styles.headLineStyle.copyWith(color: Colors.white60),
          ),
        ],
      ),
    );
  }
}
