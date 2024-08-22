import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpendingRowCategory extends StatelessWidget {
  final String text;
  final Color color;
  const SpendingRowCategory({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(100)),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          text,
          style: GoogleFonts.poppins(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
