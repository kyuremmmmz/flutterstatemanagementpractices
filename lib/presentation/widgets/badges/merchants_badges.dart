import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MerchantsBadges extends StatelessWidget {
  const MerchantsBadges({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Image.asset(
              'assets/images/mcdo.png'
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text('McDonalds',
          style: GoogleFonts.plusJakartaSans(
              
            ),
          )
        ],
      ),
    );
  }
}