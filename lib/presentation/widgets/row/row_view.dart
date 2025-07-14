import 'package:figmatoflutter/utils/app_padding.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OffersSection extends StatelessWidget {
  final VoidCallback onViewAllClick;

  const OffersSection({
    super.key,
    required this.onViewAllClick,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Offers ⚡',
            style: GoogleFonts.plusJakartaSans(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromRGBO(235, 235, 235, 1),
              elevation: 0,
              shape: RoundedRectangleBorder(
                
                borderRadius: BorderRadius.all(
                  Radius.circular(10)
                )
              )
            ),
            onPressed: onViewAllClick,
            child: Text('View all',
            style: GoogleFonts.plusJakartaSans(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color.fromRGBO(17, 17, 19, 1)
            ),
            ),
          ),
        ],
      ),
    );
  }
}