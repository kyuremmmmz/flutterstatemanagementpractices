import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BalanceContainer extends StatelessWidget {
  const BalanceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    

    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF73CAC2),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 11,
        horizontal: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.monetization_on,
            color: Colors.amber,
            size: 14,
          ),
          const SizedBox(
            width: 1,
          ),
          Text(
            '324,124',
            style: GoogleFonts.plusJakartaSans(
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}