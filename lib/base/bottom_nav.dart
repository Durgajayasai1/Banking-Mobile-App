import 'package:bank_app/pages/home.dart';
import 'package:bank_app/pages/spending.dart';
import 'package:bank_app/pages/transfer.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => BottomNavState();
}

class BottomNavState extends State<BottomNav> {

  int _selectedIndex=0;

  final List<Widget> _screens = <Widget>[
    const Home(),
    const Transfer(),
    const Spending(),
  ];

  void onTap(int index){
    setState(() {
      _selectedIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: const Color(0xff0d0d0f),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(onPressed: () => onTap(0), icon: const Icon(Iconsax.home_2, color: Colors.white,)),
            IconButton(onPressed: () => onTap(1), icon: const Icon(Iconsax.arrow_swap_horizontal, color: Colors.white,)),
            IconButton(onPressed: () => onTap(2), icon: const Icon(Iconsax.dollar_circle, color: Colors.white,)),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
    );
  }
}