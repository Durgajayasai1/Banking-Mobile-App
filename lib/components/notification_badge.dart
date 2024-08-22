import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NotificationBadge extends StatelessWidget {
  const NotificationBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xff242426),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Badge(
        child: Icon(Iconsax.notification, color: Colors.white),
      ),
    );
  }
}
