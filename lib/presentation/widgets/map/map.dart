import 'package:figmatoflutter/presentation/widgets/headers/header_1.dart';
import 'package:flutter/material.dart';

class Mapa extends StatelessWidget {
  const Mapa({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    print(width);
    return Container(
      padding: EdgeInsets.only(
        top: 32
      ),
      width: width,
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10)
        )
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header1(text: 'Nearby Rewards & Promotions'),
          const SizedBox(
            height: 16,
          ),
          Image.asset('assets/images/map.png'),
          
        ],
      ),
    );
  }
}