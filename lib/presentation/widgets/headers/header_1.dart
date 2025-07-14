import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header1 extends StatelessWidget {
  final String text;
  const Header1({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.plusJakartaSans(
        fontWeight: FontWeight.w700,
        fontSize: 20,
        color: Color.fromRGBO(17, 17, 19, 1)
      ),
    );
  }
}