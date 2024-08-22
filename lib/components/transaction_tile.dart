import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String trailing;
   const TransactionTile({ super.key, required this.imagePath, required this.title, required this.subtitle, required this.trailing });

  @override
  Widget build(BuildContext context){
    return ListTile(
      leading: CircleAvatar(backgroundImage: AssetImage(imagePath),),
      title: Text(title, style: GoogleFonts.poppins(color: Colors.white, fontWeight: FontWeight.bold),),
      subtitle: Text(subtitle, style: GoogleFonts.poppins(color: Colors.grey),),
      trailing: Text(trailing, style: GoogleFonts.poppins(color: Colors.grey[300], fontSize: 18),),
    );
  }
}