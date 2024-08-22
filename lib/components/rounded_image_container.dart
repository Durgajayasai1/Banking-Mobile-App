import 'package:flutter/material.dart';

class RoundedImageContainer extends StatelessWidget {
  final String imagePath;

  const RoundedImageContainer({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}

class RecipientsList extends StatelessWidget {
  const RecipientsList({super.key});

  @override
  Widget build(BuildContext context) {
    final recipients = [
      'assets/rec1.jpg',
      'assets/rec2.jpg',
      'assets/rec3.jpg',
      'assets/rec4.jpg',
      'assets/rec5.jpg',
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            recipients.length,
            (index) => RoundedImageContainer(
              imagePath: recipients[index],
            ),
          ),
        ),
      ),
    );
  }
}
