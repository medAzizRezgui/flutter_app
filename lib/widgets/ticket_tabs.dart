import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class TicketTabs extends StatelessWidget {
  final String text1;
  final String text2;
  const TicketTabs({Key? key, required this.text1, required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
      padding: const EdgeInsets.all(2.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          AppLayout.getHeight(50),
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withAlpha(10),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(0, 4))
        ],
        color: const Color(0xFFF4F6FD),
      ),
      child: Row(
        children: [
          // Airline tickets
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
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
            child: Center(child: Text(text1)),
          ),
          // Hotels
          Container(
            padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
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
            child: Center(child: Text(text2)),
          ),
        ],
      ),
    );
  }
}
