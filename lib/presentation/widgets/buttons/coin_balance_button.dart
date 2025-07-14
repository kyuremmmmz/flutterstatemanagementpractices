import 'package:flutter/material.dart';

class CoinBalanceButton extends StatelessWidget {
  final double balance;
  final VoidCallback onPressed;

  const CoinBalanceButton({
    super.key,
    required this.balance,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 158,
        padding: const EdgeInsets.only(
        left: 30.94, 
        top: 8,
        bottom: 8),
        decoration: BoxDecoration(
          color: const Color(0xFFF0F0F0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.monetization_on,
              color: Colors.orange[700],
              size: 18.118274688720703,
            ),
            const SizedBox(width: 2.66),
            Text(
              balance.toStringAsFixed(2).replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]},'),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}