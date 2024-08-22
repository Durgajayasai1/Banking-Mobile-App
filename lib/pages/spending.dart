import 'package:bank_app/bargraph/bar_graph.dart';
import 'package:bank_app/components/section_title.dart';
import 'package:bank_app/components/spending_row_category.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Spending extends StatefulWidget {
  const Spending({super.key});

  @override
  State<Spending> createState() => SpendingState();
}

class SpendingState extends State<Spending> {
  List<double> expenses = [
    4.40,
    2.50,
    40.44,
    10.50,
    100.20,
    88.29,
    90.10,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff0d0d0f),
          title: Text(
            "Spending",
            style: GoogleFonts.poppins(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  "\$2500.00",
                  style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 30),
                ),
                subtitle: Text(
                  "Total Spent Amount",
                  style: GoogleFonts.poppins(color: Colors.grey),
                ),
                trailing: const Icon(
                  Iconsax.calendar_search,
                  color: Color(0xffff6134),
                  size: 35,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: SizedBox(
                  height: 300,
                  child: BarGraph(expenses: expenses),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const SectionTitle(title: 'Spending Categories'),
              const SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SpendingRowCategory(text: "Transport", color: Color(0xfffff6134)),
                    SpendingRowCategory(text: "Utilities", color: Colors.green),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SpendingRowCategory(text: "Medicine", color: Colors.blue),
                    SpendingRowCategory(text: "Restaruants", color: Colors.yellow),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
