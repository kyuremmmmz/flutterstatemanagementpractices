import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MerchantsBadges extends StatelessWidget {
  final String image;
  final String text;
  const MerchantsBadges({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10)
              )
            ),
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(text,
          style: GoogleFonts.plusJakartaSans(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              fontStyle: FontStyle.normal
            ),
          )
        ],
      ),
    );
  }
}