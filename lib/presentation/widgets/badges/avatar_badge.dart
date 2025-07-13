import 'package:flutter/material.dart';

class AvatarBadge extends StatelessWidget {
  final double? width;
  final double? height;
  const AvatarBadge({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFF1F1F1),
        ),
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      width: width,
      height: height,
      child: Icon(
        Icons.person_outline
      ),
    );
  }
}