import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: const Color(0xff242426),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: Colors.white.withOpacity(0.3),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BalanceDetail(text: "USD"),
                SizedBox(width: 10),
                BalanceDetail(text: "VISA"),
                SizedBox(width: 10),
                BalanceDetail(text: "**** 5462, Exp 08/26", width: 180),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0),
            child: Text(
              "\$3,200.00",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 45,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0),
            child: Text(
              "Balance",
              style: GoogleFonts.poppins(
                color: Colors.grey[300],
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BalanceDetail extends StatelessWidget {
  final String text;
  final double width;

  const BalanceDetail({super.key, required this.text, this.width = 50});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: const Color(0xff4d4d51),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.poppins(color: Colors.white),
        ),
      ),
    );
  }
}
