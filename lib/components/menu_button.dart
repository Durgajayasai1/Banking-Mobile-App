import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: const Color(0xff242426),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: Colors.white.withOpacity(0.2),
        ),
      ),
      child: const Center(
        child: Icon(Iconsax.menu, color: Colors.white, size: 30),
      ),
    );
  }
}
