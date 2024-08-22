import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class NumberPad extends StatefulWidget {
  const NumberPad({super.key});

  @override
  State<NumberPad> createState() => NumberPadState();
}

class NumberPadState extends State<NumberPad> {
  String input = "";

  void onPressed(String value) {
    setState(() {
      input += value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Text(
              input,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            itemCount: 12,
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 2,
            ),
            itemBuilder: (context, index) {
              if (index == 11) {
                return ElevatedButton(
                  onPressed: () {
                    if (input.isNotEmpty) {
                      setState(() {
                        input = input.substring(0, input.length - 1);
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    padding: const EdgeInsets.all(20.0),
                  ),
                  child: const FaIcon(
                    FontAwesomeIcons.deleteLeft,
                    color: Colors.white,
                  ),
                );
              } else {
                String buttonText = "";
                if (index < 9) {
                  buttonText = (index + 1).toString();
                } else if (index == 9) {
                  buttonText = "0";
                } else if (index == 10) {
                  buttonText = "*";
                }

                return ElevatedButton(
                  onPressed: () => onPressed(buttonText),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    padding: const EdgeInsets.all(20.0),
                  ),
                  child: Text(
                    buttonText,
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
