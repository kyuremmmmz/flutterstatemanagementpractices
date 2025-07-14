import 'package:figmatoflutter/presentation/widgets/buttons/coin_balance_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OffersContainer extends StatelessWidget {
  final String image;
  final String text;
  final String subtext;
  final double price;
  const OffersContainer({super.key, required this.image, required this.text, required this.subtext, required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10)
        )
      ),
      width: 166,
      padding: EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 4
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10)
              )
            ),
            child: Image.asset(image,
            fit: BoxFit.cover,
            height: 158,
            width: 158,
          ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 8,
              left: 8
            ),
            child: Text(text,
            style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 16
                ),
              ),
            ),
            Padding(
            padding: EdgeInsets.only(
              top: 8,
              left: 8
            ),
            child: Text(subtext,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.plusJakartaSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color.fromRGBO(126, 126, 128, 1)
                ),
              ),
            ),
            Padding(
            padding: EdgeInsets.only(
              top: 8,
              left: 0
            ),
            child: CoinBalanceButton(
            balance: price, 
            onPressed: (){})
            )
        ],
      ),
    );
  }
}