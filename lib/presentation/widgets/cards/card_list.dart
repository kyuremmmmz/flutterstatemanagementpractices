import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardList extends StatelessWidget {
  final Color bgColor;
  final String headingText;
  final String subtext;
  final Color headingColorText;
  final Color subColorText;
  const CardList({
    super.key,
    required this.bgColor,
    required this.headingText,
    required this.subtext,
    required this.headingColorText,
    required this.subColorText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      padding: const EdgeInsets.only(top: 9),
      child: Card(
        color: bgColor,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Container(
          padding: const EdgeInsets.only(
            top: 9,
            right: 86,
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/images/content.png',
                height: 116,
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    headingText,
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: headingColorText,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    subtext,
                    style: TextStyle(
                      color: subColorText,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}