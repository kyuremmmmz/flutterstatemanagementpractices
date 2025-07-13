import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextHeader extends StatelessWidget {
  final String text;
  final String name;
  const TextHeader({super.key, required this.text, required this.name});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double baseFontSize = screenWidth > 600 ? 18.0 : 13.1;
    print(screenWidth);
    print(screenHeight);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$text, ',
          style: GoogleFonts.plusJakartaSans(
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: baseFontSize,
          ),
        ),
        Text(
          '$name👋🏻',
          style: GoogleFonts.plusJakartaSans(
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            fontSize: baseFontSize,
          ),
        ),
      ],
    );
  }
}