import 'package:bank_app/components/action_button.dart';
import 'package:bank_app/components/balance_card.dart';
import 'package:bank_app/components/menu_button.dart';
import 'package:bank_app/components/notification_badge.dart';
import 'package:bank_app/components/rounded_image_container.dart';
import 'package:bank_app/components/section_title.dart';
import 'package:bank_app/components/transaction_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage('assets/michael.jpg'),
                ),
                title: Text(
                  "Hello, Michael",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Your Wallet",
                  style: GoogleFonts.poppins(color: Colors.grey),
                ),
                trailing: const NotificationBadge(),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: BalanceCard(),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ActionButton(
                    icon: Iconsax.add,
                    label: "Add Money",
                    color: Colors.white,
                    textColor: Colors.black,
                  ),
                  ActionButton(
                    icon: Iconsax.export_3,
                    label: "Transfer",
                    color: Color(0xffff6134),
                    textColor: Colors.black,
                  ),
                  MenuButton(),
                ],
              ),
              const SizedBox(height: 20),
              const SectionTitle(title: "Recent recipients"),
              const SizedBox(height: 10),
              const RecipientsList(),
              const SizedBox(height: 20,),
              const SectionTitle(title: "Transactions"),
              const TransactionTile(imagePath: 'assets/uber.png', title: 'Uber', subtitle: '3:00 PM', trailing: '- \$18.60'),
              const TransactionTile(imagePath: 'assets/starbucks.png', title: 'Starbucks', subtitle: '2:30 PM', trailing: '+ \$145.25'),
            ],
          ),
        ),
      ),
    );
  }
}
